import 'package:fitweenV1/global/theme.dart';
import 'package:fitweenV1/view/page/record/detail/widget.dart';
import 'package:fitweenV1/view/widget/widget/app_bar.dart';
import 'package:flutter/material.dart';

class RecordDetailPage extends StatelessWidget {
  const RecordDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Container(
        padding: const EdgeInsets.only(left:16.0, right: 16.0, top: 33.0),
        decoration: const BoxDecoration(color: Color(0xffF7ECDE)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("오늘의 들은 무게",
              style: textTheme.labelLarge,
            ),
            const ExerciseDetailView(
              rate: 0.1,
              measure: "오늘 들은 무게",
              currentLevel: "모아이 석상",
              nextLevel: "코끼리",
              image: 'assets/image/object/moai_stone.svg',
            ),
          ],
        ),
      ),
    );
  }
}