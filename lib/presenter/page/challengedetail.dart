/* 첼린지 상세 페이지 프리젠터 */

import 'package:fitweenV1/presenter/firebase/firebase.dart';
import 'package:get/get.dart';

/// class
class DetailPresenter extends GetxController {
  /// static methods
  // 상세 페이지로 이동
  static Future toDetail() async {
    final detailPresenter = Get.find<DetailPresenter>();
    Get.toNamed('/detail');
  }

}
