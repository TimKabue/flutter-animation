import 'package:animation_tutorial/application/pages/demo/demo_page.dart';
import 'package:animation_tutorial/application/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          builder: (context, state) => const HomePageProvider(),
        ),
        //TODO: Implement correct routing
        //---Animated Align demonstration page
        GoRoute(
          name: 'animated-demonstration',
          path: '$_basePath/animation-demonstration/:lectureID',
          //builder: (context, state) => AnimationDemoPage(displayPage: state.pathParameters['lectureID'] ?? 'defaultScreen'),
          builder: (context, state) => const HomePageProvider(),
        ),
      ],
    ),
  ],
);
