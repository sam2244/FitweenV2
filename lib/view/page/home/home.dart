import 'package:fitweenV1/view/page/home/widget.dart';
import 'package:fitweenV1/view/widget/widget/app_bar.dart';
import 'package:fitweenV1/view/widget/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      backgroundColor: Color(0xfff7ecde),
      drawer: HomeDrawer(),
      body: HomeView(),
    );
  }
}