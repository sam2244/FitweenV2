import 'package:fitweenV1/view/page/record/main/widget.dart';
import 'package:fitweenV1/view/widget/widget/app_bar.dart';
import 'package:flutter/material.dart';

class RecordMainPage extends StatelessWidget {
  const RecordMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: MyRecordView(),
    );
  }
}