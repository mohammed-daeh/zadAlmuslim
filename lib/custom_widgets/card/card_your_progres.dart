// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/quran_pages/start_khatma/controller/alarm_controler.dart';

class CardYourProgres extends StatelessWidget {
  CardYourProgres({super.key});

  String dayLeft = '22';
  String juzuLeft = '23';

  final AlarmController alarmController = Get.put(AlarmController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Utils.localize('yourProgrss'),
            style: TextStyle(
              color: Color(0xff062437),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 32,
            height: 2,
            color: Color(0xffF6DAC2),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xffE0ECEE))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 132,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dayLeft,
                        style: TextStyle(
                            color: Color(0xffDEA56E),
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        Utils.localize('dayLeft'),
                        style: TextStyle(
                            color: Color(0xff124D73),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 44,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Divider(
                      color: Color(0xffE0ECEE),
                      // thickness: 2,
                    ),
                  ),
                ),
                SizedBox(
                  width: 132,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        juzuLeft,
                        style: TextStyle(
                            color: Color(0xffDEA56E),
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        Utils.localize('juzuLeft'),
                        style: TextStyle(
                            color: Color(0xff124D73),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Obx(
            () => Container(
              height: alarmController.isAlarmEnabled.value ? 92 : 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color(0xffE0ECEE))),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 8.0, left: 16, top: 16, bottom: 16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Utils.localize('dailyReadingReminder'),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff124D73),
                          ),
                        ),
                        alarmController.isAlarmEnabled.value
                            ? Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 98,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffEEF5FA)),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/khatamPage/time_blue.svg',
                                        width: 16,
                                        height: 16,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        alarmController.alarmTime.value,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff49454F)),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : SizedBox()
                      ],
                    ),
                    Spacer(),
                    CupertinoSwitch(
                      value: alarmController.isAlarmEnabled.value,
                      onChanged: (bool value) async {
                        if (value) {
                          final selectedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            builder: (BuildContext context, Widget? child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  timePickerTheme: TimePickerThemeData(
                                    backgroundColor: Colors.white,
                                    entryModeIconColor: Color(0xff49454F),
                                    dayPeriodColor: Color(0xffE0ECEE),
                                    dialHandColor: Color(0xffDEA56E),
                                    dialBackgroundColor: Color(0xffEEF7F9),
                                    hourMinuteColor: Color(0xffEEF7F9),
                                    dialTextColor: Colors.black,
                                    timeSelectorSeparatorColor:
                                        WidgetStatePropertyAll(Colors.black),
                                    hourMinuteTextColor: Colors.black,
                                    dayPeriodTextColor: Colors.black,
                                    dayPeriodBorderSide:
                                        BorderSide(color: Color(0xffDADCE0)),
                                    cancelButtonStyle: TextButton.styleFrom(
                                      foregroundColor: Color(0xff124D73),
                                    ),
                                    confirmButtonStyle: TextButton.styleFrom(
                                      foregroundColor: Color(0xff124D73),
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            },
                          );
                          if (selectedTime != null) {
                            alarmController.setAlarmTime(selectedTime);
                          } else {
                            return;
                          }
                        }
                        alarmController.toggleAlarm(value);
                      },
                      activeTrackColor: Color(0xffEEF7F9),
                      focusColor: Colors.red,
                      offLabelColor: Colors.red,
                      thumbColor: alarmController.isAlarmEnabled.value
                          ? Color(0xff124D73)
                          : Colors.white,
                      inactiveTrackColor: Color(0xffEEF5FA),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
