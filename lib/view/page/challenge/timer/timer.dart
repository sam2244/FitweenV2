import 'dart:math';

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
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('진행 중인 챌린지', style: TextStyle(fontSize: 12.0)),
                              const Text('향고래 구출하기', style: TextStyle(fontSize: 22.0)),
                              Expanded(
                                child: LinearPercentIndicator(
                                  percent: .6,
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
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
                child: Text('개수: ${controller.count}'),
              ),
              Stack(
                children: [
                  const SizedBox(height: 114.0),
                  if (controller.state == ExerciseState.stop)
                  CircledButton(
                    text: '시작',
                    onPressed: controller.startExercise,
                    color: const Color(0xff54bab9),
                  ),
                  if (controller.state == ExerciseState.ongoing)
                  CircledButton(
                    text: '일시정지',
                    onPressed: controller.pauseExercise,
                    color: const Color(0xfff5be48),
                  ),
                  if (controller.state == ExerciseState.pause)
                  DraggableCircledButton(
                    text: '재개',
                    color: const Color(0xfff5be48),
                    onPressed: controller.startExercise,
                    leftText: '초기화',
                    leftColor: const Color(0xffba1a1a),
                    leftSelected: controller.stopExercise,
                    rightText: '완료',
                    rightColor: const Color(0xff54bab9),
                    rightSelected: controller.finishExercise,
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

class DraggableCircledButton extends StatefulWidget {
  const DraggableCircledButton({
    Key? key,
    this.size = 114.0,
    this.sideSize = 70.0,
    this.interval = 5.0,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 40.0, vertical: 20.0,
    ),
    required this.text,
    required this.leftText,
    required this.rightText,
    required this.onPressed,
    required this.leftSelected,
    required this.rightSelected,
    required this.color,
    required this.leftColor,
    required this.rightColor,
  }) : super(key: key);

  final double size;
  final double sideSize;
  final double interval;
  final EdgeInsets padding;
  final String text;
  final String leftText;
  final String rightText;
  final VoidCallback onPressed;
  final VoidCallback leftSelected;
  final VoidCallback rightSelected;
  final Color color;
  final Color leftColor;
  final Color rightColor;

  @override
  State<DraggableCircledButton> createState() => _DraggableCircledButtonState();
}

class _DraggableCircledButtonState extends State<DraggableCircledButton> {
  late double x;
  late double screenWidth;
  late String text;
  bool dragging = false;
  double get relX => x - screenWidth * .5;
  double get dist => (screenWidth - widget.padding.horizontal - widget.sideSize) * .5;
  double get scale => 1 - (relX / dist).abs();
  double get feedbackSize => widget.sideSize + (
    widget.size - widget.sideSize - widget.interval
  ) * scale;

  @override
  void didChangeDependencies() {
    screenWidth = MediaQuery.of(context).size.width;
    x = screenWidth * .5;
    text = widget.text;
    super.didChangeDependencies();
  }

  void onPanStart(DragStartDetails details) => setState(() => dragging = true);
  void onPanUpdate(details) => setState(() {
    x = details.localPosition.dx + (screenWidth - widget.size) * .5;
    if (scale > .3) { text = widget.text; }
    else {
      if (relX > 0) {
        x = screenWidth - (widget.padding.horizontal + widget.sideSize) * .5;
        text = widget.rightText;
      }
      else {
        x = (widget.padding.horizontal + widget.sideSize) * .5;
        text = widget.leftText;
      }
    }
  });
  void onPanEnd(details) => setState(() {
    dragging = false;
    if (relX == -dist) { widget.leftSelected(); }
    else if (relX == dist) { widget.rightSelected(); }
    text = widget.text;
    x = screenWidth * .5;
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: widget.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: widget.sideSize,
                    height: widget.sideSize,
                    decoration: BoxDecoration(
                      border: Border.all(color: widget.leftColor),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(widget.leftText,
                        style: TextStyle(
                          color: widget.leftColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 3.0),
                  SvgPicture.asset('assets/image/page/timer/left_arrow.svg'),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/image/page/timer/right_arrow.svg'),
                  const SizedBox(width: 3.0),
                  Container(
                    width: widget.sideSize,
                    height: widget.sideSize,
                    decoration: BoxDecoration(
                      border: Border.all(color: widget.rightColor),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(widget.rightText,
                        style: TextStyle(
                          color: widget.rightColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: widget.color),
          ),
          child: Center(
            child: Text(widget.text,
              style: TextStyle(
                color: widget.color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          left: x - (feedbackSize + widget.interval) * .5,
          child: GestureDetector(
            onPanStart: onPanStart,
            onPanUpdate: onPanUpdate,
            onPanEnd: onPanEnd,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: feedbackSize - widget.interval,
                  height: feedbackSize - widget.interval,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.leftColor.withOpacity(-min(relX, 0) / dist),
                  ),
                ),
                Container(
                  width: feedbackSize - widget.interval,
                  height: feedbackSize - widget.interval,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.rightColor.withOpacity(max(relX, 0) / dist),
                  ),
                ),
                CircledButton(
                  text: text,
                  onPressed: widget.onPressed,
                  size: feedbackSize + widget.interval,
                  color: widget.color.withOpacity(1 - relX.abs() / dist),
                  fill: true,
                  interval: widget.interval,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class CircledButton extends StatelessWidget {
  const CircledButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.size = 114.0,
    this.fill = true,
    this.interval = 5.0,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double size;
  final bool fill;
  final double interval;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TimerPresenter>(
      builder: (controller) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                border: Border.all(color: color),
                shape: BoxShape.circle,
              ),
            ),
            Center(
              child: Material(
                color: fill ? color : Colors.transparent,
                borderRadius: BorderRadius.circular(57.0),
                child: InkWell(
                  onTap: onPressed,
                  borderRadius: BorderRadius.circular(57.0),
                  child: Container(
                    width: size - interval,
                    height: size - interval,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Center(
                      child: Text(text,
                        style: TextStyle(
                          color: fill ? Colors.white : color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}
