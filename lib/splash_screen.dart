import 'package:animation/onboarding_1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void wait() async {
    await Future.delayed(Duration(seconds: 5));

    Navigator.pushNamed(context, '/boarding1');
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => OnBoarding_1()));
  }

  @override
  void initState() {
    wait();
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Center(
              child: Container(
                height: 600,
                width: 350,
                color: Color.fromARGB(255, 255, 33, 86),
                child: Column(children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dare To Donate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      wordSpacing: 2,
                    ),
                  ),
                ]),
              ),
            )));
  }
}
