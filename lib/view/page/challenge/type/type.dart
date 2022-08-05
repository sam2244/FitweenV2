import 'package:fitweenV1/view/page/challenge/type/widget.dart';
import 'package:flutter/material.dart';

class ChallengeTypePage extends StatelessWidget {
  const ChallengeTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 236, 222, 1),
      appBar: AppBar(),
      body: const ChallengeType(),
    );
  }
}
