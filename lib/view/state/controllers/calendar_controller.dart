import 'package:get/get.dart';

class CalendarController extends GetxController {
  var focusedDay = DateTime.now().obs;
  var selectedDay = DateTime.now().obs;

  final Set<DateTime> completedDays = {
    DateTime(2025, 2, 1),
    DateTime(2025, 2, 2),
    DateTime(2025, 2, 3),
    DateTime(2025, 2, 12),
    DateTime(2025, 2, 13),
    DateTime(2025, 2, 14),
    DateTime(2025, 2, 15),
    DateTime(2025, 2, 16),
    DateTime(2025, 2, 17),
    DateTime(2025, 2, 18),
    DateTime(2025, 2, 20),
    DateTime(2025, 2, 21),
    DateTime(2025, 2, 22),
    DateTime(2025, 2, 29),
  };
  List<DateTime> get streakDays {
    List<DateTime> streaks = [];
    completedDays.toList().sort((a, b) => a.compareTo(b));
    DateTime? lastDay;

    for (var day in completedDays) {
      if (lastDay == null || lastDay.add(Duration(days: 1)) == day) {
        streaks.add(day);
      } else {
        streaks = [day];
      }
      lastDay = day;
    }
    return streaks;
  }

  void updateSelectedDay(DateTime selectedDay, DateTime focusedDay) {
    this.selectedDay.value = selectedDay;
    this.focusedDay.value = focusedDay;
  }
}
