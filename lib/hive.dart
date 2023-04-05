import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';

import 'generaltextfield.dart';

class Hiveflutter extends StatefulWidget {
  const Hiveflutter({super.key});

  @override
  State<Hiveflutter> createState() => _HiveflutterState();
}

class _HiveflutterState extends State<Hiveflutter> {
  String boxname = 'cartbox';
  Future<void> sethivevalues() async {
    var hivebox = await Hive.openBox<Object>(boxname);

    hivebox.put('keystring', 'Hussain');
  }

  Future<void> gethivevalues() async {
    var hivebox = await Hive.openBox<Object>(boxname);

    hivebox.get('keystring');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 300,
            height: 600,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      sethivevalues();
                    },
                    child: Text('Hive Set')),
                ElevatedButton(
                    onPressed: () {
                      gethivevalues();
                    },
                    child: Text('Get Hive')),
              ],
            )),
      ),
    );
  }
}
