import 'package:flutter/material.dart';

class Dtack extends StatefulWidget {
  const Dtack({super.key});

  @override
  State<Dtack> createState() => _DtackState();
}

class _DtackState extends State<Dtack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          height: 100,
          width: 100,
          color: Colors.green,
          child: Text('Hi, This is Stack')),
      Positioned(
        left: 20,
        top: 20,
        child: Container(
            height: 150,
            width: 100,
            color: Colors.yellow,
            child: Text('I know bro')),
      ),
      Positioned(
        top: 40,
        left: 40,
        child: Container(
            height: 200,
            width: 100,
            color: Colors.brown,
            child: Text('Thanks for this')),
      ),
    ]));
  }
}
