import 'package:animation/fields.dart';
import 'package:animation/generaltextfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _mail = GlobalKey<FormState>();

  RegExp _numeric = RegExp(r'^-?[0-9]+$');

// r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 182, 179, 179),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
            height: 600,
            width: 350,
            alignment: Alignment.center,
            color: Color.fromARGB(255, 246, 250, 252),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  height: 100,
                  width: 70,
                  child: Image.asset(
                    'assets/images/logo.png',
                    color: Color.fromARGB(255, 255, 33, 86),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Dare ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 33, 86),
                        )),
                    TextSpan(
                        text: 'To ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),
                    TextSpan(
                        text: 'Donate',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 33, 86),
                        ))
                  ])),
                ),
                SizedBox(
                  height: 120,
                ),
                Form(
                  key: _mail,
                  child: Column(
                    children: [
                      textformfield(
                        Icons.mail_outline,
                        'Enter the Email',
                        email,
                        'Enter the Email',
                        true,
                        false,
                        300,
                        45,
                        Colors.transparent,
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      textformfield(
                          Icons.password_outlined,
                          "Enter password",
                          password,
                          'Enter Password',
                          false,
                          true,
                          300,
                          45,
                          Colors.transparent),
                      // TextFormField(
                      //   controller: password,
                      //   keyboardType: TextInputType.none,
                      //   obscureText: true,
                      //   obscuringCharacter: '*',
                      //   decoration: InputDecoration(
                      //     fillColor: Color.fromARGB(255, 226, 222, 222),
                      //     filled: true,
                      //     prefixIcon: Icon(Icons.lock_sharp,
                      //         color: Color.fromARGB(255, 255, 33, 86)),
                      //     // contentPadding:
                      //     //     const EdgeInsets.only(bottom: 15),
                      //     hintText: '*********',
                      //     border: InputBorder.none,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    if (_mail.currentState!.validate()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('OKAY')));
                    }
                  },
                  child: Text('LOG IN'),
                  style: TextButton.styleFrom(
                    side: BorderSide(
                        width: 2, color: Color.fromARGB(255, 255, 33, 86)),
                    minimumSize: Size(300, 43),
                    backgroundColor: Color.fromARGB(255, 255, 33, 86),
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/reset');
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 255, 33, 86)),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don' 't have any account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, '/register');
                      }),
                      child: Text(
                        'Register',
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 33, 86)),
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
