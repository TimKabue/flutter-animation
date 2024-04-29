// Animated Container Demo

//import 'dart:ffi';

import 'package:flutter/material.dart';

class Lecture2 extends StatefulWidget {
  const Lecture2({super.key});

  @override
  State<Lecture2> createState() => _Lecture2State();
}

class _Lecture2State extends State<Lecture2> {
  // Variables
  Color _color = Colors.grey;
  double _radius = 20.0;
  double _width = 100.0;
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Animated Container Example'),
          GestureDetector(
            onTap: () => _setAnimationValues(),
            child: AnimatedContainer(
              width: _width,
              height: _height,
              duration: const Duration(
                milliseconds: 400,
              ),
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(_radius),
              ),
              child: Image.asset('assets/jerry.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _color = Colors.grey;
                  _radius = 20.0;
                  _width = 100.0;
                  _height = 100.0;
                });
              },
              child: const Icon(
                Icons.refresh,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _setAnimationValues() {
    setState(() {
      _color = Colors.orange;
      _radius = 40.0;
      _width = 200.0;
      _height = 200.0;
    });
  }
}
