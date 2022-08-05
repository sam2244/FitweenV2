/* 라우트 관련 */

import 'package:fitweenV1/view/page/challenge/list/list.dart';
import 'package:fitweenV1/view/page/challenge/main/main.dart';
import 'package:fitweenV1/view/page/challenge/setting/setting.dart';
import 'package:fitweenV1/view/page/challenge/timer/timer.dart';
import 'package:fitweenV1/view/page/challenge/type/type.dart';
import 'package:fitweenV1/view/page/developer.dart';
import 'package:fitweenV1/view/page/main/detail/detail.dart';
import 'package:fitweenV1/view/page/main/record/record.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// class
class FWRoute {
  /// static variables
  // 화면 전환 트랜지션
  static const Transition transition = Transition.fadeIn;

  // 화면 전환 지속시간
  static const Duration duration = Duration(milliseconds: 100);

  /// static methods
  // 라우트 문자열, 페이지 매핑
  static Map<String, Widget> get pages => {
        '/developer': const DeveloperPage(),
        '/timer': const TimerPage(),
        '/challenge/main': const ChallengeMainPage(),
        '/challenge/setting': const ChallengeSettingPage(),
        '/challenge/list': const ChallengeListPage(),
        '/challenge/type': const ChallengeTypePage(),
        '/detail': const DetailPage(),
        '/record': const RecordPage(),
      };

  // 겟페이지 리스트
  static List<GetPage> get getPages => pages.entries
      .map((page) => GetPage(
            name: page.key,
            page: () => page.value,
            transition: transition,
            transitionDuration: duration,
          ))
      .toList();
}
