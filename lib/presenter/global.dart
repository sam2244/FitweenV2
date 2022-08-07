import 'package:fitweenV1/presenter/page/challenge.dart';
import 'package:fitweenV1/presenter/page/challengedetail.dart';
import 'package:fitweenV1/presenter/page/complete.dart';
import 'package:fitweenV1/presenter/page/exercise.dart';
import 'package:get/get.dart';

class GlobalPresenter extends GetxController {
  int navIndex = 0;

  // void navigate(int index) {
  //   navIndex = index;
  //
  //   switch (navIndex) {
  //     case 0: MainPresenter.toMain(); break;
  //     case 1: MyCrewPresenter.toMyCrew(); break;
  //     case 2: MyPresenter.toMy(); break;
  //   }
  //   update();
  // }

  static void profileImagePressed() {}

  static void initControllers() {
    Get.put(ExercisePresenter());
    Get.put(CompletePresenter());
    Get.put(ChallengePresenter());
    Get.put(DetailPresenter());
  }
}
