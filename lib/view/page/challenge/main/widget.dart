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
      title: Text('Fitween'),
      backgroundColor: Colors.greenAccent,
    );
  }
}

class MainDrawer extends StatelessWidget{
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('메인'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined),
            title: const Text('첼린지'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.book_outlined),
            title: const Text('크루'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.dialpad),
            title: const Text('컬렉션'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('설정'),
            onTap: () => {},
          ),
        ],
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
            color: Colors.greenAccent,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(measure),
              Text(currentlevel),
              Text("다음 단계: $nextlevel 까지"),
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
                  progressColor: Colors.greenAccent.withOpacity(.3 + percent * 7 / 10),
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