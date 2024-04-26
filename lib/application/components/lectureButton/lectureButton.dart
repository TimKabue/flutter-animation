import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../pages/home/bloc/lecture_page_cubit.dart';

// class LectureButtonProvider extends StatelessWidget {
//   const LectureButtonProvider({super.key, required this.displayPage, required this.buttonTitle});
//
//   // Fields
//   final String displayPage;
//   final String buttonTitle;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) {
//         return LecturePageCubit();
//       },
//       child: LectureButton(displayPage: displayPage, buttonTitle: buttonTitle,),
//     );
//   }
// }

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
            context
                .read<LecturePageCubit>()
                .buttonPressed(context, displayPage);
          },
          child: Text(buttonTitle),
        ),
      ),
    );
  }
}
