import 'package:animation_tutorial/application/core/page_config.dart';
import 'package:animation_tutorial/application/pages/home/bloc/lecture_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/lectureButton/lectureButton.dart';

//Constants

//Dashboard page
class DashboardPage extends StatefulWidget {
  //Fields
//This is obtained from the url parameters.

  const DashboardPage({super.key, String? id});

  //Page configuration
  static PageConfig pageConfig = const PageConfig(
    name: 'dashboard',
    child: DashboardPage(),
  );

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        LectureButton(displayPage: 'lecture1', buttonTitle: 'Lecture 1: Animated Align'),
        LectureButton(displayPage: 'lecture2', buttonTitle: 'Lecture 2: Animated Container',),
        LectureButton(displayPage: 'lecture3', buttonTitle: 'Lecture 3: Test button',),
      ],
    );
  }
}

