// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/state/controllers/azkar_alsabah_controller.dart';
import 'package:quran/view/state/widgets/progress_painter.dart';

class ContainerAzkarDailyGoal extends StatelessWidget {
  ContainerAzkarDailyGoal({super.key});
  final AzkarAlsabahController alsabahController =
      Get.put(AzkarAlsabahController());
  final AzkarAlsabahController almasaaController =
      Get.put(AzkarAlsabahController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEEF5FA)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: SvgPicture.asset(
                'assets/images/dou.svg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        Utils.localize('Azkardailygoal'),
                        style: TextStyle(
                          color: Color(0xff17689C),
                          fontSize: 16,
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/icons/arrow_right.svg',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    Utils.localize('AzkarAlsabah'),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff17689C),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Obx(() => Row(
                        children: [
                          Expanded(
                            child: CustomPaint(
                              painter: ProgressPainter(
                                  alsabahController.progressValue.value,
                                  alsabahController.totalValue),
                              child: SizedBox(),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "${alsabahController.progressValue.value} / ${alsabahController.totalValue}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    Utils.localize('AAzkarAlmasaa'),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff17689C),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Obx(() => Row(
                        children: [
                          Expanded(
                            child: CustomPaint(
                              painter: ProgressPainter(
                                  almasaaController.progressValue.value,
                                  almasaaController.totalValue),
                              child: SizedBox(),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "${almasaaController.progressValue.value} / ${almasaaController.totalValue}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
