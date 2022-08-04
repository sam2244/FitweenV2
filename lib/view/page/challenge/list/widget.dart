import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChallengeCard();
  }
}

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: const Color(0xff3198D1),
        child: Column(
          children: [
            Image.network(''),
            const Text('향고래에게\n무슨 일이?'),
            const Text('갑자기 해변에 떠내려온 향고래 한마리!\n도대체 무슨 일이지?'),
            const ElevatedButton(
              onPressed: null,
              child: Text('알아보러 가기'),
            ),
          ],
        ),
      ),
    );
  }
}
