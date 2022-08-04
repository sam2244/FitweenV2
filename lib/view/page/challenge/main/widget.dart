import 'package:fitweenV1/global/theme.dart';
import 'package:fitweenV1/view/widget/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

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

class MainDrawer extends StatelessWidget{
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top:80),
          color: const Color(0xff54BAB9),
          child: ListView(
            children: [
              /*const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SizedBox(
                  height: 10.0,
                )
              ),*/
              Container(
                padding: const EdgeInsets.only(top:15,bottom:15),
                child: ListTile(
                  leading: const Icon(Icons.home_outlined,
                  color: FWTheme.white,
                  ),
                  title: FWText('메인',
                    style: textTheme.bodyLarge,
                    color: FWTheme.white,
                  ),
                  onTap: () => {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top:15,bottom:15),
                child: ListTile(
                  leading: const Icon(Icons.people_alt_outlined,
                    color: FWTheme.white,
                  ),
                  title: FWText('첼린지',
                    style: textTheme.bodyLarge,
                    color: FWTheme.white,
                  ),
                  onTap: () => {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top:15,bottom:15),
                child: ListTile(
                  leading: const Icon(Icons.book_outlined,
                    color: FWTheme.white,
                  ),
                  title: FWText('크루',
                    style: textTheme.bodyLarge,
                    color: FWTheme.white,
                  ),
                  onTap: () => {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top:15,bottom:15),
                child: ListTile(
                  leading: const Icon(Icons.dialpad,
                    color: FWTheme.white,
                  ),
                  title: FWText('컬렉션',
                    style: textTheme.bodyLarge,
                    color: FWTheme.white,
                  ),
                  onTap: () => {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top:15,bottom:15),
                child: ListTile(
                  leading: const Icon(Icons.settings,
                    color: FWTheme.white,
                  ),
                  title: FWText('설정',
                    style: textTheme.bodyLarge,
                    color: FWTheme.white,
                  ),
                  onTap: () => {},
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

class ChallengeCard extends StatelessWidget{
  final double rate;
  final String measure;
  final String currentlevel;
  final String nextlevel;

  const ChallengeCard({
    Key? key,
    required this.rate,
    required this.measure,
    required this.currentlevel,
    required this.nextlevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double percent = rate;
    if (rate == .0) percent = .05;

    return Container(
      margin: const EdgeInsets.only(bottom: 10.0, top: 14.0),
        decoration: BoxDecoration(
            color: FWTheme.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blueAccent)
        ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            width: 104,
            height: 112,
            color: FWTheme.white,
            //child: Image.asset('assets/image/page/record/moai.svg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(measure),
              Text(currentlevel,
                style: textTheme.titleLarge,
              ),
              Container(
                  padding: const EdgeInsets.only(top:18),
                  child: Text("다음 단계: $nextlevel 까지")
              ),
              Container(
                width: 250,
                //padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.outline),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  lineHeight: 10,
                  backgroundColor: Colors.transparent,
                  progressColor: const Color(0xff54BAB9).withOpacity(.3 + percent * 7 / 10),
                  barRadius: const Radius.circular(10.0),
                  percent: percent,
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}