import 'package:flutter/material.dart';

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
              color: Colors.blue,
            ),
            child: Text('Pages'),
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
  const ChallengeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Text("오늘 들은 무게"),
              Text("모아이 석상"),
              Text("다음 단계: 기린 까지")
            ],
          )
        ],
      )
    );
  }
}