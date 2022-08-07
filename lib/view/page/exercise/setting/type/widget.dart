import 'package:fitweenV1/presenter/page/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseTypeView extends StatelessWidget {
  const ExerciseTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          ExerciseTypeCard(
            icon: Icons.fitness_center,
            type: '무게 측정',
            exercise: '스쿼트',
          ),
          ExerciseTypeCard(
            icon: Icons.directions_run,
            type: '거리 측정',
            exercise: '러닝',
          ),
          ExerciseTypeCard(
            icon: Icons.stairs_outlined,
            type: '높이 측정',
            exercise: '계단 오르기',
          ),
        ],
      ),
    );
  }
}

class ExerciseTypeCard extends StatelessWidget {
  final IconData icon;
  final String type;
  final String exercise;

  const ExerciseTypeCard({
    Key? key,
    required this.icon,
    required this.type,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: const Color(0xfffbf8f1),
        child: InkWell(
          onTap: ExercisePresenter.toExerciseDetailSetting,
          borderRadius: BorderRadius.circular(10.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(icon, size: 56),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: const TextStyle(fontSize: 24.0),
                    ),
                    Text(
                      '현재 설정된 운동 : $exercise',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
