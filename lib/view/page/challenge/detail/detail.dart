import 'package:fitweenV1/global/theme.dart';
import 'package:fitweenV1/view/widget/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:fitweenV1/view/page/challenge/detail/widget.dart';

class ChallengeDetailPage extends StatelessWidget {
  const ChallengeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBar(),
      body: Container(
        padding: const EdgeInsets.only(left:16.0, right: 16.0, top: 33.0),
        decoration: const BoxDecoration(color: Color(0xffF7ECDE)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FWText("오늘의 들은 무게",
              style: textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
