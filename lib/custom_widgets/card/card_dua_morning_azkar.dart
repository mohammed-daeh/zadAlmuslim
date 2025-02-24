// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/dua/controller/morning_azkar_progres_controller.dart';
import 'package:get/get.dart';

class CardMorningAzkar extends StatelessWidget {
  CardMorningAzkar({super.key});
  MorningAzkarProgresController progressController =
      Get.put(MorningAzkarProgresController());
  @override
  Widget build(BuildContext context) {
    var progres = progressController.currentValue / progressController.maxValue;

    return Obx(
      () {
        return Stack(
          children: [
            Container(
              width: 163,
              height: 143,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/images/duaPage/Morning_Azkar.svg',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(height: 8),
                    Text(
                      Utils.localize('morningAzkar'),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '${progressController.currentValue} / ${progressController.maxValue}',
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff062437),
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      height: 8,
                      width: 131,
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(10),
                        value: progres,
                        backgroundColor: const Color(0xffFFF2E5),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xffDEA56E)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(16)),
                child: SvgPicture.asset(
                  'assets/images/duaPage/zagrafa_corner_top_right.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
