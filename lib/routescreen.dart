import 'package:animation/bottomnevbar.dart';
import 'package:animation/homepage.dart';
import 'package:flutter/material.dart';

class Routescreen extends StatefulWidget {
  const Routescreen({super.key});

  @override
  State<Routescreen> createState() => _RoutescreenState();
}

class _RoutescreenState extends State<Routescreen> {
  Route pageroute() {
    return PageRouteBuilder(
        pageBuilder: ((context, animation, secondaryAnimation) => Bot()),
        transitionDuration: Duration(seconds: 4),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        }

        //     {
        //   Offset(1, 0);
        //   Curves.bounceInOut;
        //   var tween = Tween(
        //     begin: 1.0,
        //     end: 5.0,
        //   ).chain(Tween());
        //   SlideTransition(
        //     position: animation.drive(Tween()),
        //     child: child,
        //   );
        // },
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(pageroute());
            },
            child: Text('page Route'),
          )),
    );
  }
}
