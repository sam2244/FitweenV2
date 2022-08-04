import 'package:fitweenV1/presenter/page/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff54bab9),
        title: const Text('Fitween',
          style: TextStyle(color: Color(0xfff7ecde)),
        ),
      ),
      backgroundColor: const Color(0xfff7ecde),
      body: GetBuilder<TimerPresenter>(
        builder: (controller) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15.0),
                width: 330.0,
                height: 91.0,
                child: Card(
                  color: const Color(0xfffbf8f1),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                        ),
                        child: SvgPicture.asset('assets/image/page/timer/whale.svg'),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('진행 중인 챌린지', style: TextStyle(fontSize: 12.0)),
                              const Text('향고래 구출하기', style: TextStyle(fontSize: 22.0)),
                              Expanded(
                                child: LinearPercentIndicator(
                                  percent: .7,
                                  padding: EdgeInsets.zero,
                                  lineHeight: 12.0,
                                  barRadius: const Radius.circular(6.0),
                                  progressColor: const Color(0xff54bab9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    if (controller.state == ExerciseState.stop)
                    Center(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: const BoxDecoration(
                          color: Color(0xff006a69),
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text('푸쉬업',
                            style: TextStyle(
                              color: Color(0xfff7ecde),
                              fontSize: 50.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (controller.state == ExerciseState.ready)
                    Center(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        decoration: const BoxDecoration(
                          color: Color(0xff006a69),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text('${controller.second}',
                            style: const TextStyle(
                              color: Color(0xfff7ecde),
                              fontSize: 120.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (controller.state == ExerciseState.ongoing
                        || controller.state == ExerciseState.pause)
                    Stack(
                      children: [
                        Center(
                          child: CircularPercentIndicator(
                            radius: 155.0,
                            lineWidth: 5.0,
                            percent: (controller.exerciseTimer?.tick ?? .0)
                                % (TimerPresenter.exerciseTime * 100)
                                / (TimerPresenter.exerciseTime * 100),
                            progressColor: const Color(0xff54bab9),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Center(
                          child: Material(
                            borderRadius: BorderRadius.circular(150.0),
                            color: const Color(0xffe9dac1),
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(150.0),
                              child: SizedBox(
                                width: 300.0,
                                height: 300.0,
                                child: Center(
                                  child: SvgPicture.asset(
                                    TimerPresenter.assets[controller.assetIndex],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
                child: Text('개수: ${controller.count}'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 114.0),
                  if (controller.state == ExerciseState.ongoing
                      || controller.state == ExerciseState.pause)
                  CircledButton(
                    text: '취소',
                    onPressed: controller.stopExercise,
                    backgroundColor: Colors.transparent,
                    borderColor: const Color(0xff54bab9),
                    textColor: const Color(0xff54bab9),
                  ),
                  if (controller.state == ExerciseState.stop)
                  CircledButton(
                    text: '시작',
                    onPressed: controller.startExercise,
                    backgroundColor: const Color(0xfff54848),
                    borderColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  if (controller.state == ExerciseState.ongoing)
                  CircledButton(
                    text: '일시정지',
                    onPressed: controller.pauseExercise,
                    backgroundColor: const Color(0xfff5be48),
                    borderColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                  if (controller.state == ExerciseState.pause)
                  CircledButton(
                    text: '재개',
                    onPressed: controller.startExercise,
                    backgroundColor: const Color(0xff54bab9),
                    borderColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 80.0),
            ],
          );
        }
      ),
    );
  }
}

class CircledButton extends StatelessWidget {
  const CircledButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TimerPresenter>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Material(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(57.0),
            child: InkWell(
              onTap: onPressed,
              borderRadius: BorderRadius.circular(57.0),
              child: Container(
                width: 114.0,
                height: 114.0,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(text,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
