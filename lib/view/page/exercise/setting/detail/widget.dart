import 'package:fitweenV1/presenter/page/exercise.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ExerciseDetailSettingView extends StatelessWidget {
  const ExerciseDetailSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Card(
            color: const Color(0xffFBF8F1),
            child: Column(
              children: [
                Container(
                  height: 220.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    // child: SvgPicture.asset(
                    //   'assets/image/exercise/push_up.svg',
                    // ),
                    child: Image.network(
                      'https://img.freepik.com/premium-vector/sportswoman-doing-squat-enjoy-fitness-training-vector-flat-illustration-active-woman-sportswear-practicing-workout-home-gym-isolated-white-happy-female-doing-everyday-physical-activity_198278-11622.jpg?w=1480',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xff54BAB9),
                                    fixedSize: const Size(80, 80),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text('스쿼트',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffd9d9d9),
                                    fixedSize: const Size(80, 80),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(
                                    '푸쉬업',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffd9d9d9),
                                    fixedSize: const Size(80, 80),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(
                                    '턱걸이',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                children: const [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('운동 설명')),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '사람이 아무런 도구 없이도 할 수 있는 순수 맨몸 운동 중 하나이며, 자신의 몸을 팔로 밀어내야 하기 때문에 꽤나 근력이 붙는다.',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: Padding(
                            //     padding: EdgeInsets.symmetric(vertical: 8.0),
                            //     child: Text('추가 무게'),
                            //   ),
                            // ),
                            // const Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: SizedBox(
                            //     width: 200.0,
                            //     child: TextField(
                            //       decoration: InputDecoration(
                            //         border: OutlineInputBorder(),
                            //         hintText: 'KG',
                            //         isDense: true,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(height: 8.0),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text('참고 영상'),
                              ),
                            ),
                            SizedBox(
                              height: 120.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(
                                    width: 120.0,
                                    child: Card(
                                      color: const Color(0xffD9D9D9),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 120.0,
                                            height: 80.0,
                                            decoration: const BoxDecoration(
                                              borderRadius:
                                              BorderRadius.vertical(
                                                top: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                              const BorderRadius.vertical(
                                                top: Radius.circular(10.0),
                                              ),
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(48),
                                                child: Image.network(
                                                  'https://health.chosun.com/site/data/img_dir/2021/05/20/2021052000854_0.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Expanded(
                                            child: Center(
                                              child: Text(
                                                '백선생의 푸쉬업 강의',
                                                style:
                                                TextStyle(fontSize: 12.0),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120.0,
                                    height: 120.0,
                                    child: Card(
                                      color: const Color(0xffD9D9D9),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 120.0,
                                            height: 80.0,
                                            decoration: const BoxDecoration(
                                              borderRadius:
                                              BorderRadius.vertical(
                                                top: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                              const BorderRadius.vertical(
                                                top: Radius.circular(10.0),
                                              ),
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(48),
                                                child: Image.network(
                                                  'https://health.chosun.com/site/data/img_dir/2021/05/20/2021052000854_0.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Expanded(
                                            child: Center(
                                              child: Text(
                                                '백선생의 푸쉬업 강의',
                                                style:
                                                TextStyle(fontSize: 12.0),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120.0,
                                    height: 120.0,
                                    child: Card(
                                      color: const Color(0xffD9D9D9),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 120.0,
                                            height: 80.0,
                                            decoration: const BoxDecoration(
                                              borderRadius:
                                              BorderRadius.vertical(
                                                top: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                              const BorderRadius.vertical(
                                                top: Radius.circular(10.0),
                                              ),
                                              child: SizedBox.fromSize(
                                                size: const Size.fromRadius(48),
                                                child: Image.network(
                                                  'https://health.chosun.com/site/data/img_dir/2021/05/20/2021052000854_0.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Expanded(
                                            child: Center(
                                              child: Text(
                                                '백선생의 푸쉬업 강의',
                                                style:
                                                TextStyle(fontSize: 12.0),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const SizedBox(height: 16.0),
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: ElevatedButton(
                      //     onPressed: () {},
                      //     child: const Text(
                      //       '선택',
                      //       style: TextStyle(fontSize: 28.0),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff54BAB9),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text('돌아가기',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => ExercisePresenter.toExerciseMain(ExerciseState.stop),
              style: ElevatedButton.styleFrom(primary: const Color(0xff54BAB9)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text('운동하기',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ExercisePage extends StatelessWidget {
  const ExercisePage(
      {Key? key,
        required this.title,
        required this.exercises,
        required this.extraWeight,
        this.challenge})
      : super(key: key);
  final String title;
  final List exercises;
  final bool extraWeight;
  final String? challenge;

  List<Widget> exerciseButton() {
    return exercises
        .map(
          (exercise) => ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffd9d9d9),
          fixedSize: const Size(80, 80),
          shape: const CircleBorder(),
        ),
        child: Text(
          exercise,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
      child: Card(
        color: const Color(0xffFBF8F1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 28.0),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('운동 종류'),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: exerciseButton(),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    extraWeight
                        ? Column(
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text('추가 무게'),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 200.0,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'KG',
                                isDense: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                      ],
                    )
                        : Container(),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text('진행 중인 챌린지'),
                      ),
                    ),
                    Row(
                      children: [
                        Image.network(
                          width: 100.0,
                          'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/4799/sperm-whale-clipart-md.png',
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  challenge!,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                                const SizedBox(height: 4.0),
                                Container(
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: LinearPercentIndicator(
                                    padding: EdgeInsets.zero,
                                    lineHeight: 10,
                                    barRadius: const Radius.circular(10.0),
                                    percent: 0.7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    '선택',
                    style: TextStyle(fontSize: 28.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
