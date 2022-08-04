import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ChallengeSetting extends StatelessWidget {
  const ChallengeSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      const ExercisePage(
          title: '들어볼까요?',
          exercises: ['푸쉬업', '턱걸이', '스쿼트'],
          extraWeight: true,
          challenge: '향고래 구출하기'),
      const ExercisePage(
          title: '뛰어볼까요??',
          exercises: ['걷기', '달리기', '싸이클'],
          extraWeight: false,
          challenge: '향고래 구출하기'),
      const ExercisePage(
          title: '올라볼까요?',
          exercises: ['계단\n오르기'],
          extraWeight: false,
          challenge: '향고래 구출하기')
    ];

    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: double.infinity,
        viewportFraction: 1.0,
      ),
    );
    // child: Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: Column(
    //     children: [
    //       const Text(
    //         '들어볼까요?',
    //         style: TextStyle(fontSize: 28.0),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(16.0),
    //         child: Column(
    //           children: [
    //             const Align(
    //               alignment: Alignment.centerLeft,
    //               child: Padding(
    //                 padding: EdgeInsets.symmetric(vertical: 8.0),
    //                 child: Text('운동 종류'),
    //               ),
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 ElevatedButton(
    //                   onPressed: () {},
    //                   style: ElevatedButton.styleFrom(
    //                     primary: const Color(0xffd9d9d9),
    //                     fixedSize: const Size(80, 80),
    //                     shape: const CircleBorder(),
    //                   ),
    //                   child: const Text(
    //                     '푸쉬업',
    //                     style: TextStyle(color: Colors.black),
    //                   ),
    //                 ),
    //                 ElevatedButton(
    //                   onPressed: () {},
    //                   style: ElevatedButton.styleFrom(
    //                     primary: const Color(0xffd9d9d9),
    //                     fixedSize: const Size(80, 80),
    //                     shape: const CircleBorder(),
    //                   ),
    //                   child: const Text(
    //                     '턱걸이',
    //                     style: TextStyle(color: Colors.black),
    //                   ),
    //                 ),
    //                 ElevatedButton(
    //                   onPressed: () {},
    //                   style: ElevatedButton.styleFrom(
    //                     primary: const Color(0xffd9d9d9),
    //                     fixedSize: const Size(80, 80),
    //                     shape: const CircleBorder(),
    //                   ),
    //                   child: const Text(
    //                     '스퀴트',
    //                     style: TextStyle(color: Colors.black),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(
    //               height: 8.0,
    //             ),
    //             const Align(
    //               alignment: Alignment.centerLeft,
    //               child: Padding(
    //                 padding: EdgeInsets.symmetric(vertical: 8.0),
    //                 child: Text('추가 무게'),
    //               ),
    //             ),
    //             const Align(
    //               alignment: Alignment.centerLeft,
    //               child: SizedBox(
    //                 width: 200.0,
    //                 child: TextField(
    //                   decoration: InputDecoration(
    //                     border: OutlineInputBorder(),
    //                     hintText: 'KG',
    //                     isDense: true,
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(height: 8.0),
    //             const Align(
    //               alignment: Alignment.centerLeft,
    //               child: Padding(
    //                 padding: EdgeInsets.symmetric(vertical: 8.0),
    //                 child: Text('진행 중인 챌린지'),
    //               ),
    //             ),
    //             Row(
    //               children: [
    //                 Image.network(
    //                   width: 100.0,
    //                   'https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/4799/sperm-whale-clipart-md.png',
    //                 ),
    //                 Expanded(
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         const Text(
    //                           '향고래 구출하기',
    //                           style: TextStyle(fontSize: 16.0),
    //                         ),
    //                         const SizedBox(height: 4.0),
    //                         Container(
    //                           padding: const EdgeInsets.all(1.0),
    //                           decoration: BoxDecoration(
    //                             border: Border.all(
    //                                 color: Theme.of(context)
    //                                     .colorScheme
    //                                     .outline),
    //                             borderRadius: BorderRadius.circular(100.0),
    //                           ),
    //                           child: LinearPercentIndicator(
    //                             padding: EdgeInsets.zero,
    //                             lineHeight: 10,
    //                             barRadius: const Radius.circular(10.0),
    //                             percent: 0.7,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       const SizedBox(height: 16.0),
    //       Align(
    //         alignment: Alignment.bottomCenter,
    //         child: ElevatedButton(
    //           onPressed: () {},
    //           child: const Text(
    //             '선택',
    //             style: TextStyle(fontSize: 28.0),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
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
