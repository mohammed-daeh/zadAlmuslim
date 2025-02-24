import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AlarmController extends GetxController {
  var isAlarmEnabled = false.obs;

  var alarmTime = 'لم يتم تحديد وقت'.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  //   isAlarmEnabled.value = false;
  // }

  void toggleAlarm(bool value) {
    isAlarmEnabled.value = value;
    if (!value) {
      alarmTime.value = 'لم يتم تحديد وقت';
    }
  }

  void setAlarmTime(TimeOfDay time) {
    final formattedTime = DateFormat('hh:mm a').format(
      DateTime(2023, 1, 1, time.hour, time.minute),
    );
    alarmTime.value = formattedTime;
  }
}
