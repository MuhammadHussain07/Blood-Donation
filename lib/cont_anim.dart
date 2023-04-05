import 'package:flutter/material.dart';

class Contaner extends StatefulWidget {
  const Contaner({super.key});

  @override
  State<Contaner> createState() => _ContanerState();
}

class _ContanerState extends State<Contaner> {
  var _height = 100.0;
  var _width = 200.0;
  Color colur = Colors.black;
  Decoration boxdec = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.yellow);
  bool flag = true;
  var optacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              height: _height,
              width: _width,
              decoration: boxdec,
              // color: colur,
              curve: Curves.bounceInOut,
            ),
            AnimatedOpacity(
              opacity: optacity,
              duration: Duration(seconds: 1),
              curve: Curves.elasticIn,
              child: Container(
                width: _width,
                height: _height,
                color: colur,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 70.0;
                      _height = 150.0;
                      boxdec = BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Color.fromARGB(255, 199, 59, 255));
                      optacity = 0.5;
                      flag = false;
                    } else {
                      _width = 300.0;
                      _height = 200.0;
                      boxdec = BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pinkAccent);
                      colur = Colors.greenAccent;
                      optacity = 1.0;
                      flag = true;
                    }
                  });
                },
                child: Text('Animate  ana Close'))
          ],
        ),
      ),
    );
  }
}
