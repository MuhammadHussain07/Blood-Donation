import 'package:animation/splash_screen.dart';
import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  const Snack({super.key});

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 52, 224, 215),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    var snackBar = SnackBar(
                        duration: Duration(seconds: 5),
                        backgroundColor: Color.fromARGB(255, 7, 88, 88),
                        content: Text('here is snack bar'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('show the snack bar')),
              OutlinedButton(
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 33, 86),
                    side: BorderSide(
                        width: 2, color: Color.fromARGB(255, 255, 33, 86)),
                    minimumSize: Size(260, 43),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SplashScreen()));
                  },
                  child: Text(
                    'Go to the Splash Screen',
                    selectionColor: Colors.black,
                    style: TextStyle(
                        color: Color.fromARGB(216, 219, 137, 13),
                        backgroundColor: Color.fromARGB(255, 33, 4, 112),
                        fontSize: 15),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
