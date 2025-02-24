// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quran/view/state/widgets/container_azkar_daily_goal.dart';
import 'package:quran/view/state/widgets/container_progress.dart';
import 'package:quran/view/state/widgets/container_quran_daily_goal.dart';
import 'package:quran/view/state/widgets/container_tesbih.dart';

class DailyPage extends StatelessWidget {
  DailyPage({super.key});
  String time = '1h 23m';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ContainerProgress(),
            ContainerQuranDailyGoal(),
            ContainerAzkarDailyGoal(),
            ContainerTesbih(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
