import 'package:fitweenV1/global/theme.dart';
import 'package:fitweenV1/view/widget/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:fitweenV1/view/page/challenge/main/widget.dart';

class ChallengeMainPage extends StatelessWidget {
  const ChallengeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: MainAppBar(),
      body: Container(
        padding: const EdgeInsets.only(left:16.0, right: 16.0, top: 33.0),
        decoration: const BoxDecoration(color: Color(0xffF7ECDE)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FWText("오늘의 기록",
              style: textTheme.labelLarge,
            ),
            const ChallengeCard(
              rate: 0.1,
              measure: "오늘 들은 무게",
              currentlevel: "모아이 석상",
              nextlevel: "기린",
              image: 'assets/image/page/record/moai.svg',
            ),
            const ChallengeCard(
              rate: 0.1,
              measure: "오늘 오른 계단 높이",
              currentlevel: "에펠탑",
              nextlevel: "엠파이어 스테이트 빌딩",
              image: 'assets/image/page/record/eiffel.svg',
            )
          ],
        ),
      ),
    );
  }
}
