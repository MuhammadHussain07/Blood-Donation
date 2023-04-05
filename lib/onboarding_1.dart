import 'package:flutter/material.dart';
import 'package:animation/onboarding_2.dart';

class OnBoarding_1 extends StatefulWidget {
  const OnBoarding_1({super.key});

  @override
  State<OnBoarding_1> createState() => _OnBoarding_1State();
}

class _OnBoarding_1State extends State<OnBoarding_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 182, 179, 179),
        child: Center(
          child: Container(
            height: 600,
            width: 350,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                    height: 150,
                    width: 300,
                    child: Image.asset('assets/images/character.png')),
                SizedBox(
                  height: 90,
                ),
                Text(
                  'Find Blood Donors',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  // height: 109,
                  child: Text(
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    '   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/boarding3');
                        },
                        child: Text(
                          'Skip',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/boarding2');
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => OnBoarding_2()));
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
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
