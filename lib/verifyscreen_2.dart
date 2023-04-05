import 'package:animation/generaltextfield.dart';
import 'package:flutter/material.dart';

class VerifyScreen_2 extends StatefulWidget {
  const VerifyScreen_2({super.key});

  @override
  State<VerifyScreen_2> createState() => _VerifyScreen_2State();
}

class _VerifyScreen_2State extends State<VerifyScreen_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 182, 179, 179),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              height: 600,
              width: 350,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/success.png'),
                    SizedBox(height: 30),
                    custombutton('Finish', "/verify2", context),
                  ]),
            ),
          )),
    );
  }
}
