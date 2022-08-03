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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("오늘의 기록"),
            ChallengeCard(),
            ChallengeCard(),
          ],
        ),
      ),
    );
  }
}
