// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:quran/view/state/controllers/calendar_controller.dart';

class CalendarWidget extends StatelessWidget {
  final CalendarController controller = Get.put(CalendarController());

  @override
  Widget build(BuildContext context) {
    DateTime firstDay = DateTime(2025, 1, 1);
    DateTime lastDay = DateTime(2025, 12, 31);

    return Obx(() {
      DateTime focusedDay = controller.focusedDay.value;

      if (focusedDay.isAfter(lastDay)) {
        focusedDay = lastDay;
      } else if (focusedDay.isBefore(firstDay)) {
        focusedDay = firstDay;
      }

      return TableCalendar(
        focusedDay: focusedDay,
        firstDay: firstDay,
        lastDay: lastDay,
        calendarFormat: CalendarFormat.month,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          weekendStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: Color(0xff17689C),
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          defaultDecoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          weekendTextStyle: TextStyle(
            color: Colors.black,
          ),
          outsideTextStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
        selectedDayPredicate: (day) =>
            isSameDay(controller.selectedDay.value, day),
        onDaySelected: (selectedDay, focusedDay) {
          controller.updateSelectedDay(selectedDay, focusedDay);
        },
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, date, _) {
            return Stack(
              alignment: Alignment.center,
              children: [
                if (_isConnectedToNextDay(date))
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 5,
                    bottom: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEEF5FA),
                        borderRadius: _getBorderRadiusForStreak(date),
                      ),
                      height: 4,
                    ),
                  ),
                _buildStreakDay(date),
              ],
            );
          },
        ),
      );
    });
  }

  Widget _buildStreakDay(DateTime date) {
    bool isCompleted = controller.completedDays.any((d) => isSameDay(d, date));

    return Center(
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: isCompleted ? Color(0xff17689C) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Text(
          "${date.day}",
          style: TextStyle(
            color: isCompleted ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  bool _isConnectedToNextDay(DateTime date) {
    DateTime nextDay = date.add(Duration(days: 1));
    DateTime previousDay = date.subtract(Duration(days: 1));

    bool isNextDayCompleted =
        controller.completedDays.any((d) => isSameDay(d, nextDay));
    bool isCurrentDayCompleted =
        controller.completedDays.any((d) => isSameDay(d, date));

    bool isPreviousDayCompleted =
        controller.completedDays.any((d) => isSameDay(d, previousDay));

    return (isCurrentDayCompleted && isNextDayCompleted) ||
        (isCurrentDayCompleted && isPreviousDayCompleted);
  }

  BorderRadius _getBorderRadiusForStreak(DateTime date) {
    DateTime nextDay = date.add(Duration(days: 1));
    DateTime previousDay = date.subtract(Duration(days: 1));

    bool isFirstDay =
        !controller.completedDays.any((d) => isSameDay(d, previousDay));
    bool isLastDay =
        !controller.completedDays.any((d) => isSameDay(d, nextDay));

    if (isFirstDay && isLastDay) {
      return BorderRadius.circular(2);
    } else if (isFirstDay) {
      return BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );
    } else if (isLastDay) {
      return BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      );
    } else {
      return BorderRadius.zero;
    }
  }
}
