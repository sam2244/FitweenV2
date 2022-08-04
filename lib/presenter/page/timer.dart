import 'dart:async';

import 'package:get/get.dart';

enum ExerciseState { ready, ongoing, pause, stop }

class TimerPresenter extends GetxController {
  int second = 3;
  int count = 0;

  Timer? exerciseTimer;
  int assetIndex = 0;

  ExerciseState state = ExerciseState.stop;

  static int exerciseTime = 2;

  static List<String> assets = [
    'assets/image/page/timer/sit.svg',
    'assets/image/page/timer/stand.svg'
  ];

  static void toTimer() => Get.toNamed('/timer');

  void decreaseSecond() { second--; update(); }
  Future startThreeSecondsTimer() async {
    state = ExerciseState.ready;
    second = 3; update();
    for (int i = 0; i < 3; i++) {
      await Future.delayed(const Duration(seconds: 1), decreaseSecond);
    }
    if (state == ExerciseState.ready) state = ExerciseState.ongoing;
    update();
  }

  void increaseCount(Timer timer) {
    if (timer.tick % (exerciseTime * 50) == 0) {
      assetIndex = (assetIndex + 1) % assets.length;
      if (timer.tick % (exerciseTime * 100) == 0) count++;
    }
    update();
  }

  Future startExercise() async {
    if (state == ExerciseState.stop) await startThreeSecondsTimer();
    if (state == ExerciseState.pause) { state = ExerciseState.ongoing; }
    exerciseTimer = Timer.periodic(
      const Duration(milliseconds: 10), increaseCount,
    );
    update();
  }

  void pauseExercise() {
    assetIndex = 0;
    exerciseTimer?.cancel();
    state = ExerciseState.pause;
    update();
  }

  void stopExercise() {
    assetIndex = 0;
    exerciseTimer?.cancel();
    state = ExerciseState.stop;
    second = 3; count = 0; update();
  }
}