import 'package:flutter/material.dart';

import 'generaltextfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController bloodcontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 182, 179, 179),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
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
                  height: 20,
                ),
                Container(
                    width: 300,
                    height: 350,

                    /// color: Colors.red,
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          textformfield(
                              Icons.person,
                              "Enter name",
                              namecontroller,
                              'abc',
                              false,
                              false,
                              300,
                              45,
                              Colors.transparent),
                          SizedBox(
                            height: 10,
                          ),
                          textformfield(
                              Icons.mail_lock_outlined,
                              "abc@gmail.com",
                              emailcontroller,
                              'Enter the valid Email',
                              true,
                              false,
                              300,
                              45,
                              Colors.transparent),
                          SizedBox(
                            height: 10,
                          ),
                          textformfield(
                              Icons.password_outlined,
                              "Enter password",
                              passowrdController,
                              'Password must be atleast 6 characters',
                              false,
                              true,
                              300,
                              45,
                              Colors.transparent),
                          SizedBox(
                            height: 10,
                          ),
                          textformfield(
                              Icons.phone_android_outlined,
                              "Enter number",
                              numbercontroller,
                              'abc',
                              false,
                              false,
                              300,
                              45,
                              Colors.transparent),
                          SizedBox(
                            height: 10,
                          ),
                          textformfield(
                              Icons.bloodtype_outlined,
                              "O +ive",
                              bloodcontroller,
                              'abc',
                              false,
                              false,
                              300,
                              45,
                              Colors.transparent),
                          SizedBox(
                            height: 10,
                          ),
                          textformfield(
                              Icons.location_city_outlined,
                              "KPK, Abbottabad",
                              locationcontroller,
                              'abc',
                              false,
                              false,
                              300,
                              45,
                              Colors.transparent),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('OKAY')));
                    }
                    Navigator.pushNamed(context, '/verifyotp');
                  },
                  child: Text('REGISTER'),
                  style: TextButton.styleFrom(
                    side: BorderSide(
                        width: 2, color: Color.fromARGB(255, 255, 33, 86)),
                    minimumSize: Size(300, 43),
                    backgroundColor: Color.fromARGB(255, 255, 33, 86),
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have any account',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: (() {
                        Navigator.pop(context, '/login');
                      }),
                      child: Text(
                        'Log In',
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
