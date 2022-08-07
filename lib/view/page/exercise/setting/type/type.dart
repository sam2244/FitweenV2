import 'package:fitweenV1/view/page/exercise/setting/type/widget.dart';
import 'package:fitweenV1/view/widget/widget/app_bar.dart';
import 'package:flutter/material.dart';

class ExerciseTypeSettingPage extends StatelessWidget {
  const ExerciseTypeSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff7ecde),
      appBar: HomeAppBar(),
      body: ExerciseTypeView(),
    );
  }
}
