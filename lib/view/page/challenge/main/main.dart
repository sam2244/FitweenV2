import 'package:fitweenV1/view/page/challenge/main/widget.dart';
import 'package:fitweenV1/view/widget/widget/app_bar.dart';
import 'package:flutter/material.dart';

class ChallengeMainPage extends StatelessWidget {
  const ChallengeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      backgroundColor: Color(0xfff7ecde),
      body: ChallengeListView(),
    );
  }
}
