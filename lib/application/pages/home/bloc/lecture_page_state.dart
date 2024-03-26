part of 'lecture_page_cubit.dart';

@immutable
sealed class LecturePageState {}

final class LecturePageInitial extends LecturePageState {}

//SmallScreenState can only be triggered when a 'lecture' button has been pressed.
final class SmallScreenState extends LecturePageState {
  //Field
  final String lecturePageName;

  //Constructor
  SmallScreenState({required this.lecturePageName});
}

//LargeScreenState can only be triggered when a 'lecture' button has been pressed.
final class LargeScreenState extends LecturePageState {
  //Field
  final String lecturePageName;

  //Constructor
  LargeScreenState({required this.lecturePageName});
}
