import 'package:animation/donation%20request.dart';
import 'package:animation/homepage.dart';
import 'package:animation/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bot extends StatefulWidget {
  const Bot({super.key});

  @override
  State<Bot> createState() => _BotState();
}

class _BotState extends State<Bot> {
  List butt = [
    Homepage(),
    Request(),
    Homepage(),
    Homepage(),
  ];
  int _currentIndex = 0;
  void ontapp(int ind) {
    setState(() {
      _currentIndex = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: butt[_currentIndex],
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 255, 33, 86),

          //Floating action button on Scaffold
          onPressed: () {
            //code to execute on button press
          },
          child: Image.asset(
            'assets/images/Logo.png',
            height: 40,
            width: 30,
          ) //icon inside button
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.white,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0
                    ? Color.fromARGB(255, 255, 33, 86)
                    : Colors.grey,
              ),
              onPressed: () {
                ontapp(0);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: _currentIndex == 1
                    ? Color.fromARGB(255, 255, 33, 86)
                    : Colors.grey,
              ),
              onPressed: () {
                ontapp(1);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.graphic_eq_outlined,
                color: _currentIndex == 2
                    ? Color.fromARGB(255, 255, 33, 86)
                    : Colors.grey,
              ),
              onPressed: () {
                ontapp(2);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 3
                    ? Color.fromARGB(255, 255, 33, 86)
                    : Colors.grey,
              ),
              onPressed: () {
                ontapp(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
