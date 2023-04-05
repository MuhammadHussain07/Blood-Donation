import 'package:flutter/material.dart';
import 'package:animation/onboarding_3.dart';

class OnBoarding_2 extends StatefulWidget {
  const OnBoarding_2({super.key});

  @override
  State<OnBoarding_2> createState() => _OnBoarding_2State();
}

class _OnBoarding_2State extends State<OnBoarding_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, 182, 179, 179),
      child: Center(
        child: Container(
          color: Colors.white,
          height: 600,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                  width: 300,
                  height: 150,
                  child: Image.asset('assets/images/rafiki.png')),
              SizedBox(
                height: 90,
              ),
              Text(
                'Post A Blood Request',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 250,
                // height: 50,
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                    '   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.'),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
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
                        Navigator.pushNamed(context, '/boarding3');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => OnBoarding_3()));
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
    ));
  }
}
