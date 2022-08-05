import 'package:fitweenV1/view/page/main/start/widget.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xffE9DAC1),
      body: const Start(),
    );
  }
}
