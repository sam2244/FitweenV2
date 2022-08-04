import 'package:fitweenV1/global/theme.dart';
import 'package:fitweenV1/presenter/page/timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 임시 페이지기 때문에 stateful 사용
class DeveloperPage extends StatelessWidget {
  const DeveloperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/challenge/main'),
              child: const Text('ChallengeMainPage'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/challenge/setting'),
              child: const Text('ChallengeSettingPage'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/challenge/list'),
              child: const Text('ChallengeListPage'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/timer'),
              child: const Text('TimerPage'),
            ),
            const TextButton(
              onPressed: TimerPresenter.toTimer,
              child: Text('TimerPage'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/detail'),
              child: const Text('DetailPage'),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/record'),
              child: const Text('RecordPage'),
            ),
          ],
        ),
      ),
    );
  }
}
