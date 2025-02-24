import 'package:flutter/material.dart';
import 'package:quran/view/state/widgets/container_daily_streak.dart';
import 'package:quran/view/state/widgets/container_quran.dart';
import 'package:quran/view/state/widgets/container_total_time.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ContainerTotalTime(),
            SizedBox(height: 16),
            ContainerDailyStreak(),
            SizedBox(height: 16),
            ContainerQuran(),
            SizedBox(height: 160),
          ],
        ),
      ),
    );
  }
}
