import 'package:fitweenV1/view/page/challenge/setting/widget.dart';
import 'package:flutter/material.dart';

class ChallengeSettingPage extends StatelessWidget {
  const ChallengeSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 236, 222, 1),
      appBar: AppBar(),
      body: const ChallengeSetting(),
    );
  }
}
