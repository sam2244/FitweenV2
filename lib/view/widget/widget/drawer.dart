import 'package:fitweenV1/global/theme.dart';
import 'package:fitweenV1/view/widget/widget/text.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget{
  const HomeDrawer({Key? key}) : super(key: key);

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
                  onTap: () {},
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
                  onTap: () {},
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
                  onTap: () {},
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
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}