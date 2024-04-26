import 'package:animation_tutorial/application/pages/home/bloc/lecture_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/routes.dart';

//Constants
const appTitle = 'Implicit Animation Tutorial';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LecturePageCubit(),
      child: MaterialApp.router(
        title: appTitle,
        //TODO: Implement localizations and themes.
        routerConfig: routes,
      ),
    );
  }
}
