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
      ),
    );
  }
}
