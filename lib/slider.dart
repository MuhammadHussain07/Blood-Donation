import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sliderscreen extends StatefulWidget {
  const Sliderscreen({super.key});

  @override
  State<Sliderscreen> createState() => _SliderscreenState();
}

class _SliderscreenState extends State<Sliderscreen> {
  var _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        width: 600,
        color: Colors.indigoAccent,
        child: Slider(
          value: _value.toDouble(),
          min: 1.0,
          max: 20.0,
          divisions: 10,
          activeColor: Colors.green,
          inactiveColor: Colors.orange,
          label: 'Set volume value',
          onChanged: (double newValue) {
            setState(() {
              _value = newValue.round();
            });
          },
        ),
      ),
    );
  }
}
