import 'package:fitweenV1/view/page/exercise/setting/detail/widget.dart';
import 'package:fitweenV1/view/widget/widget/app_bar.dart';
import 'package:flutter/material.dart';

class ExerciseDetailSettingPage extends StatelessWidget {
  const ExerciseDetailSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(247, 236, 222, 1),
      appBar: HomeAppBar(),
      body: ExerciseDetailSettingView(),
    );
  }
}
