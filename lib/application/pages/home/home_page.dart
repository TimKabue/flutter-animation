import 'package:animation_tutorial/application/core/page_config.dart';
import 'package:animation_tutorial/application/pages/demo/demo_page.dart';
import 'package:animation_tutorial/application/pages/home/bloc/lecture_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dashboard/dashboard_page.dart';

//TODO: Check if we provide the Cubit here.

//Home page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  //HomePage configuration
  static const PageConfig pageConfig =
      PageConfig(name: 'home', child: HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LecturePageCubit, LecturePageState>(
      // buildWhen: (previousState, currentState) {
      //   // Only rebuild the UI if the state is of type SmallScreenState or LargeScreenState
      //   return currentState is SmallScreenState || currentState is LargeScreenState;
      // },
      builder: (context, state) {
        return AdaptiveLayout(
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              //In small screens the body may contain either the 'Dashboard page'
              //or 'Animation demo page' depending on whether a button has been
              //pressed.
              Breakpoints.smallAndUp: SlotLayout.from(
                  key: const Key('primary-body-small'),
                  builder: (_) {
                    //SmallScreenState indicates that a 'lecture' button has been
                    //pressed. This state carries with it the 'lecture' id.
                    if (state is SmallScreenState || state is LargeScreenState) {
                      // Cast state to the specific subclass before accessing lecturePageName
                      String lecturePageName = (state is LargeScreenState) ? state.lecturePageName : (state as SmallScreenState).lecturePageName;
                      return AnimationDemoPage(
                          displayPage: lecturePageName);
                    }
                    return const DashboardPage();
                  }),
              //In large screens the body always contains the 'Dashboard page'
              Breakpoints.mediumAndUp: SlotLayout.from(
                key: const Key('primary-body-medium'),
                builder: (_){
                  return const DashboardPage();
                }
              ),
            },
          ),
          secondaryBody: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              //The secondary body is absent in small screens and only contains
              //the animation demonstration screen in large screens.
              Breakpoints.mediumAndUp: SlotLayout.from(
                  key: const Key('secondary-body-medium'),
                  builder: (_) {
                    debugPrint('builder running...');
                    debugPrint('state is ${state.toString()}');
                    if(state is LargeScreenState  || state is SmallScreenState){
                      debugPrint('State detected as LargeScreenState in the HomePage/AdaptiveLayout');
                      // Cast state to the specific subclass before accessing lecturePageName
                      String lecturePageName = (state is LargeScreenState) ? state.lecturePageName : (state as SmallScreenState).lecturePageName;
                      return AnimationDemoPage(displayPage: lecturePageName);
                    }
                    return const AnimationDemoPage(displayPage: 'messageScreen');
                  }),
            },
          ),
        );
      },
    );
  }
}
