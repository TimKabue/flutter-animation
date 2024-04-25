import 'package:animation_tutorial/application/core/page_config.dart';
import 'package:animation_tutorial/application/pages/home/bloc/lecture_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                //Call the Cubit method to route to 'lecture1' page
                context.read<LecturePageCubit>().buttonPressed('lecture1');
              },
              child: const Text('Lecture 1: Animated Align'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                //Call the Cubit method to route to 'lecture1' page
                context.read<LecturePageCubit>().buttonPressed('lecture2');
              },
              child: const Text('Lecture 2: Animated Container'),
            ),
          ),
        ),
      ],
    );
  }
}
