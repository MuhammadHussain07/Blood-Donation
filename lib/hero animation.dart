import 'package:animation/snack_bar.dart';
import 'package:flutter/material.dart';

class Hero_Animation extends StatefulWidget {
  const Hero_Animation({super.key});

  @override
  State<Hero_Animation> createState() => _Hero_AnimationState();
}

class _Hero_AnimationState extends State<Hero_Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero animation')),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Snack()));
          },
          child: Container(
            child: Hero(
              tag: 'background',
              child: Image.asset('assets/images/beep4.png'),
            ),
          ),
        ),
      ),
    );
  }
}
