import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

part 'lecture_page_state.dart';

class LecturePageCubit extends Cubit<LecturePageState> {
  LecturePageCubit() : super(LecturePageInitial());

  //Method activated when button is pressed.
  void buttonPressed(String toDisplay) {
    //Emit the button pressed state and pass the animation page to be displayed.
    emit(ButtonPressedState(displayPage: toDisplay));
  }
}
