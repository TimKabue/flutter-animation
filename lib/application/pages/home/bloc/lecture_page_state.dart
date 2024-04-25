part of 'lecture_page_cubit.dart';

@immutable
sealed class LecturePageState {}

final class LecturePageInitial extends LecturePageState {}

final class ButtonPressedState extends LecturePageState{
  //Field
  final String displayPage;

  //Constructor
  ButtonPressedState({required this.displayPage});
}