import 'package:animation_tutorial/application/pages/demo/demo_page.dart';
import 'package:animation_tutorial/application/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../pages/home/bloc/lecture_page_cubit.dart';
import '../pages/lecture1_animatedAlign/lecture1.dart';

//Constants
const _basePath = '/home';
const _appTitle = 'Implicit Animation Demonstration';

final routes = GoRouter(
  //TODO: Implement navigator keys and observers
  initialLocation: _basePath,
  routes: [
    ShellRoute(
      //TODO: Implement navigatorKey
      builder: (context, state, child){
        return Scaffold(
          appBar: AppBar(
            title: const Text(_appTitle),
            centerTitle: true,
          ),
          body: SafeArea(
            child: child,
          ),
        );
      },
      routes: [
        //---Homepage route
        GoRoute(
          name: HomePage.pageConfig.name,
          path: _basePath,
          builder: (context, state) {
            // Reset the state
            context.read<LecturePageCubit>().resetState();
            return const HomePage();
          },
        ),
        //TODO: Implement correct routing
        //---Animated Align demonstration page
        GoRoute(
          name: 'animated-demonstration',
          path: '$_basePath/animation-demonstration/:lectureID',
          builder: (context, state) {
            // Possibly update state based on URL parameter
            final lectureId = state.pathParameters['lectureID'];
            if (lectureId != null) {
              context.read<LecturePageCubit>().updateStateForLecture(lectureId);
            }
            return const HomePage();
          },
        ),
      ],
    ),
  ],
);
