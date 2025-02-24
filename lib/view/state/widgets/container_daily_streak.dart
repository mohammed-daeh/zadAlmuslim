import 'package:flutter/material.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/state/widgets/calendar_widget.dart';
import 'package:quran/view/state/widgets/dropdown_widget.dart';

class ContainerDailyStreak extends StatelessWidget {
  const ContainerDailyStreak({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xffEEF5FA)),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Utils.localize('Dailystreak'),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff17689C)),
              ),
              DropdownWidget(
                options: ['Quran', 'Azkar'],
              )
            ],
          ),
          CalendarWidget(),
        ],
      ),
    );
  }
}
