import 'package:animation/generaltextfield.dart';
import 'package:flutter/material.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  TextEditingController resetpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color.fromARGB(255, 182, 179, 179),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
              height: 600,
              width: 350,
              alignment: Alignment.center,
              color: Color.fromARGB(255, 246, 250, 252),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  textformfield(
                      Icons.mail_outlined,
                      '07hossain07@gmail.com',
                      resetpasswordcontroller,
                      'Email not exists',
                      true,
                      false,
                      300,
                      45,
                      Colors.transparent),
                  SizedBox(height: 10),
                  Container(
                    // alignment: Alignment.center,
                    width: 310,
                    //  height: 50,
                    // color: Colors.red,
                    child: Center(
                      //  alignment: Alignment.center,
                      child: Text(
                        "Your password reset will be send in your registered email address.",
                        //  style: TextStyle(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  custombutton('Send', '/verifyotp', context),
                ],
              )
                  //  ],
                  //  ),
                  ),
            )));
  }
}
