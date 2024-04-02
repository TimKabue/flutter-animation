import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

part 'lecture_page_state.dart';

class LecturePageCubit extends Cubit<LecturePageState> {
  LecturePageCubit() : super(LecturePageInitial());

  //Update page method.
  void updatePage(BuildContext context, String lecturePageName){

    //Determine the current screen size
    final screenSize = MediaQuery.of(context).size;
    final breakpoint = screenSize.width < 600 ? 'small' : 'large';

    //Emit different states based on the breakpoint
    if(breakpoint == 'small') {
      //context.goNamed('animated-demonstration', pathParameters: {'lectureID': lecturePageName});
      emit(SmallScreenState(lecturePageName: lecturePageName));
      //Route to the 'lecture1' page
      //context.goNamed('lecture1');
    } else {
      debugPrint('CUBIT: Large Screen detected');
      emit(LargeScreenState(lecturePageName: lecturePageName));
      debugPrint('CUBIT LargeScreenState emitted.');
    }

  }
}
