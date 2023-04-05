import 'package:animation/generaltextfield.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white24,
        child: Center(
          child: Container(
            color: Colors.white,
            // alignment: Alignment.center,
            height: 600,
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                    // color: Colors.cyanAccent,
                    child: Text(
                  'Donation Request',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
                info('Amir Hamza', 'Hertford British Hospital'),
                info('Abdul Qadeer', 'Apollo Hospital'),
                info('Irfan Hasan', 'Square Hospital'),
                info('Ertugal Gazi', 'Popular Hospital'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
