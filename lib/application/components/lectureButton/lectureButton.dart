import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../pages/home/bloc/lecture_page_cubit.dart';

class LectureButton extends StatelessWidget {
  // Fields
  final String displayPage;
  final String buttonTitle;

  const LectureButton({
    super.key,
    required this.displayPage,
    required this.buttonTitle,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            //Call the Cubit method to route to 'lecture1' page
            context.read<LecturePageCubit>().buttonPressed(displayPage);
          },
          child: Text(buttonTitle),
        ),
      ),
    );
  }
}