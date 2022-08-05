import 'package:fitweenV1/global/theme.dart';
import 'package:fitweenV1/presenter/page/challengedetail.dart';
import 'package:fitweenV1/view/page/challenge/detail/detail.dart';
import 'package:fitweenV1/view/widget/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: FWText('Fitween',
        style:textTheme.headlineMedium,
        color: FWTheme.white,
      ),
        iconTheme: const IconThemeData(color: FWTheme.white),
        backgroundColor: const Color(0xff54BAB9),
    );
  }
}

class ChallengeDetail extends StatelessWidget{
  final double rate;
  final String measure;
  final String currentlevel;
  final String nextlevel;
  final String image;

  const ChallengeDetail({
    Key? key,
    required this.rate,
    required this.measure,
    required this.currentlevel,
    required this.nextlevel,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = rate;
    if (rate == .0) percent = .05;

    return GetBuilder<DetailPresenter>(
        builder: (controller) {
          return Center(
            child: Container(
                padding: const EdgeInsets.only(top: 53.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      width: 298,
                      height: 242,
                      child: SvgPicture.asset(image),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 17.0),
                      child: Text(currentlevel,
                        style: textTheme.headlineMedium,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top:18),
                        child: Text("다음 단계: $nextlevel 까지")
                    ),
                    Container(
                      width: 250,
                      padding: const EdgeInsets.all(1.0),

                      decoration: BoxDecoration(
                        //border: Border.all(color: Theme.of(context).colorScheme.outline),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: LinearPercentIndicator(
                        padding: EdgeInsets.zero,
                        lineHeight: 10,
                        backgroundColor: const Color(0xffD9D9D9),
                        progressColor: const Color(0xff54BAB9).withOpacity(.3 + percent * 7 / 10),
                        barRadius: const Radius.circular(10.0),
                        percent: percent,
                      ),
                    ),
                  ],
                )
            ),
          );
        }
    );
  }
}