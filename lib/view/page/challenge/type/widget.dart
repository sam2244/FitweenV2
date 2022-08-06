import 'package:flutter/material.dart';

class ChallengeType extends StatelessWidget {
  const ChallengeType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          ChallengeTypeCard(
            icon: Icons.fitness_center,
            type: '무게 측정',
          ),
          ChallengeTypeCard(
            icon: Icons.directions_run,
            type: '거리 측정',
          ),
          ChallengeTypeCard(
            icon: Icons.stairs_outlined,
            type: '높이 측정',
          ),
        ],
      ),
    );
  }
}

class ChallengeTypeCard extends StatelessWidget {
  final IconData icon;
  final String type;

  const ChallengeTypeCard({Key? key, required this.icon, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  icon,
                  size: 56,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: const TextStyle(fontSize: 24.0),
                  ),
                  const Text(
                    '현재 설정된 운동 : 푸쉬업',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
