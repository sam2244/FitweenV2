/* 라우트 관련 */
import 'package:fitweenV1/view/page/challenge/main/main.dart';
import 'package:fitweenV1/view/page/exercise/complete/complete.dart';
import 'package:fitweenV1/view/page/exercise/main/main.dart';
import 'package:fitweenV1/view/page/exercise/setting/detail/detail.dart';
import 'package:fitweenV1/view/page/exercise/setting/type/type.dart';
import 'package:fitweenV1/view/page/home/home.dart';
import 'package:fitweenV1/view/page/record/detail/detail.dart';
import 'package:fitweenV1/view/page/record/main/main.dart';
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
    // '/developer': const DeveloperPage(),
    // '/timer': const TimerPage(),
    // '/challenge/main': const ChallengeMainPage(),
    // '/challenge/setting': const ChallengeSettingPage(),
    // '/challenge/list': const ChallengeListPage(),
    // '/challenge/type': const ChallengeTypePage(),
    // '/complete': const CompletePage(),
    // '/detail': const ChallengeDetailPage(),
    // '/record': const RecordPage(),
    // '/start': const StartPage(),
    '/home': const HomePage(),
    '/exercise/main': const ExerciseMainPage(),
    '/exercise/complete': const ExerciseCompletePage(),
    '/exercise/setting/type': const ExerciseTypeSettingPage(),
    '/exercise/setting/detail': const ExerciseDetailSettingPage(),
    '/record/main': const RecordMainPage(),
    '/record/detail': const RecordDetailPage(),
    '/challenge/main': const ChallengeMainPage(),
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
