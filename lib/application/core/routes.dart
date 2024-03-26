import 'package:animation_tutorial/application/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/lecture1_animatedAlign/lecture1.dart';

//Constants
const _basePath = '/home';

final routes = GoRouter(
  //TODO: Implement navigator keys and observers
  initialLocation: _basePath,
  routes: [
    ShellRoute(
      //TODO: Implement navigatorKey
      builder: (context, state, child){
        return Scaffold(
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
          builder: (context, state) => const HomePage(),
        ),
        //---Lecture 1 : Animated Align demonstration page
        GoRoute(
          name: 'lecture1',
          path: '$_basePath/lecture1',
          builder: (context, state) => const Lecture1(),
        ),
      ],
    ),
  ],
);