import 'package:animation_tutorial/application/core/page_config.dart';
import 'package:animation_tutorial/application/pages/lecture1_animatedAlign/lecture1.dart';
import 'package:flutter/material.dart';

class AnimationDemoPage extends StatefulWidget {
  //Fields
  final String displayPage; //This is obtained from the url parameters.

  const AnimationDemoPage({super.key, required this.displayPage});

  //Page configuration
  static const pageConfig = PageConfig(
    name: 'demo',
  );

  //Map of displayable pages
  static const Map<String, Widget> pages = {
    'messageScreen': Placeholder(
      color: Colors.blue,
      child: Text(
        'Press a button on the left screen',
      ),
    ),
    'lecture1': Lecture1(),
  };

  @override
  State<AnimationDemoPage> createState() => _AnimationDemoPageState();
}

class _AnimationDemoPageState extends State<AnimationDemoPage> {
  @override
  Widget build(BuildContext context) {
    //Select the appropriate page to display.
    final Widget? toDisplay = AnimationDemoPage.pages[widget.displayPage];
    return toDisplay ?? const Placeholder();
  }
}
