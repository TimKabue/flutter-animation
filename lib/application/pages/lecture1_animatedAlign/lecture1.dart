import 'package:flutter/material.dart';

class Lecture1 extends StatefulWidget {
  const Lecture1({super.key});

  @override
  State<Lecture1> createState() => _Lecture1State();
}

class _Lecture1State extends State<Lecture1> {

  int _jerryAligned = 0;
  //int _tomAligned = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align Example'),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAligned + 1),
            duration: const Duration(
              milliseconds: 500,
            ),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.transparent,
              child: Image.asset('assets/jerry.png'),
            ),
          ),
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAligned),
            duration: const Duration(
              milliseconds: 500,
            ),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.transparent,
              child: Image.asset('assets/tom.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: (){
          setState(() {
            _jerryAligned = _jerryAligned + 1;
            //_tomAligned = _tomAligned + 1;
          });
        },
      ),
    );
  }

  AlignmentGeometry getNextAlignment(int alignment) {
    switch(alignment){
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        _jerryAligned = 0;
        return Alignment.topLeft;
    }
  }
}
