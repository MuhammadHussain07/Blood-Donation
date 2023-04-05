import 'package:flutter/material.dart';
import 'package:animation/loginscreen.dart';

class OnBoarding_3 extends StatefulWidget {
  const OnBoarding_3({super.key});

  @override
  State<OnBoarding_3> createState() => _OnBoarding_3State();
}

class _OnBoarding_3State extends State<OnBoarding_3> {
  // TextEditingController login = TextEditingController();
  // TextEditingController register= TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Donation'),
      // actions: [
      //   ElevatedButton(
      //     onPressed: () {

      //     },
      //     child: Text(
      //       'GO_NEXT',
      //       style: TextStyle(color: Colors.pinkAccent),
      //     ),
      //   )
      // ],
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[350],
        child: Center(
          child: Container(
            height: 600,
            width: 350,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/images/logo.png',
                    color: Color.fromARGB(255, 255, 33, 86),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  // Controls visual overflow
                  overflow: TextOverflow.clip,

                  // Controls how the text should be aligned horizontally
                  textAlign: TextAlign.end,

                  // Control the text direction
                  textDirection: TextDirection.rtl,

                  // Whether the text should break at soft line breaks
                  softWrap: true,

                  // Maximum number of lines for the text to span
                  maxLines: 1,

                  // The number of font pixels for each logical pixel
                  textScaleFactor: 1,
                  text: TextSpan(
                    style: TextStyle(
                        fontSize: 16,
                        wordSpacing: 2,
                        color: Color.fromARGB(255, 255, 33, 86),
                        fontWeight: FontWeight.bold),
                    text: 'Dare ',
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'to ',
                          style: TextStyle(
                              wordSpacing: 2,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      TextSpan(
                          text: 'Donate',
                          style: TextStyle(
                              fontSize: 16,
                              wordSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 33, 86))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 276,
                  child: Text(
                    'You can donate for ones in need and request blood if you need',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[800],
                        wordSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Container(
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => LoginScreen()));
                          },
                          child: Text('LOG IN'),
                          style: TextButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 33, 86),
                            side: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 33, 86)),
                            minimumSize: Size(260, 43),
                            textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                          ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text('REGISTER'),
                          style: TextButton.styleFrom(
                            side: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 33, 86)),
                            minimumSize: Size(260, 43),
                            backgroundColor: Color.fromARGB(255, 255, 33, 86),
                            textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
