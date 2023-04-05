import 'package:animation/cont_anim.dart';
import 'package:animation/fields.dart';
import 'package:animation/hive.dart';
import 'package:animation/homepage.dart';
import 'package:animation/loginscreen.dart';
import 'package:animation/modelclass/testing1.dart';
import 'package:animation/onboarding_1.dart';
import 'package:animation/onboarding_2.dart';
import 'package:animation/onboarding_3.dart';
import 'package:animation/register_screen.dart';
import 'package:animation/resetpassword.dart';
import 'package:animation/routescreen.dart';
import 'package:animation/slider.dart';
import 'package:animation/splash_screen.dart';
import 'package:animation/stack.dart';
import 'package:animation/ui/test1.dart';
import 'package:animation/verifyscreen.dart';
import 'package:animation/verifyscreen_2.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'hero animation.dart';

void main() async {
  Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   // '/': (context) => MyHomePage(title: 'Animations'),
      //     // '/splash': (context) => SplashScreen(),
      //     // '/boarding1': (context) => OnBoarding_1(),
      //     // '/boarding2': (context) => OnBoarding_2(),
      //   '/boarding3': (context) => OnBoarding_3(),
      //   '/login': (context) => LoginScreen(),
      //   '/register': (context) => RegisterScreen(),
      //   '/reset': (context) => Resetpassword(),
      //   '/verifyotp': (context) => VerifyScreen(),
      //   '/verify2': (context) => VerifyScreen_2(),
      // },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Test1(),
      //(title: 'Animations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // title: const Text('TabBar'),
            title: const TabBar(tabs: [
              Tab(
                text: 'Tab 1',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Tab 2',
                icon: Icon(Icons.star_border_outlined),
              ),
              Tab(
                text: 'Tab 3',
                icon: Icon(Icons.person_add_alt_1_outlined),
              )
            ]),
          ),
          body: const TabBarView(
            children: [
              SplashScreen(),
              OnBoarding_1(),
              OnBoarding_2(),
              // Tab(
              //   text: 'A',
              //   icon: Icon(Icons.home),
              // ),
              // Tab(
              //   text: 'B',
              //   icon: Icon(Icons.home),
              // ),
              // Tab(
              //   text: 'C',
              //   icon: Icon(Icons.home),
              // )
            ],
          ),
          // Center(
          //     child: InkWell(
          //   onTap: () {
          //     //  Navigator.pushNamed(context, '/hero');
          //     // Navigator.push(context,
          //     //     MaterialPageRoute(builder: (context) => Hero_Animation()));
          //   },
          //   child: Hero(
          //     tag: 'background',
          //     child: Image.asset(
          //       'assets/images/beep4.png',
          //       width: 150,
          //       height: 100,
          //     ),
          //   ),
          // )),
        ),
      );
}
