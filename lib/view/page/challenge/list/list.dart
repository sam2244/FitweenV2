import 'package:fitweenV1/view/page/challenge/list/widget.dart';
import 'package:flutter/material.dart';

class ChallengeListPage extends StatelessWidget {
  const ChallengeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(247, 236, 222, 1),
        appBar: AppBar(),
        body: const ListPage());
  }
}
