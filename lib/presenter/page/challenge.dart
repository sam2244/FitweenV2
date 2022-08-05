/* 첼린지 메인 페이지 프리젠터 */

import 'package:fitweenV1/presenter/page/challengedetail.dart';
import 'package:get/get.dart';

/// class
class ChallengePresenter extends GetxController {

  /// methods
  // 특정 크루 카드 클릭 시
  void challengeCardPressed() async {
    await DetailPresenter.toDetail();
  }
}
