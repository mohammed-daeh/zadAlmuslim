// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/state/controllers/quran_daily_goal_controller.dart';
import 'package:quran/view/state/widgets/progress_painter.dart';

class ContainerQuranDailyGoal extends StatelessWidget {
  ContainerQuranDailyGoal({super.key});
  final QuranDailyGoalController controller =
      Get.put(QuranDailyGoalController());

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
              child: SvgPicture.asset(
                'assets/images/quran.svg',
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
                        Utils.localize('Qurandailygoal'),
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
                  Obx(() => Text(
                        "${controller.progressValue.value} / ${controller.totalValue} Page",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff17689C)),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Obx(() => Row(
                        children: [
                          CustomPaint(
                            painter: ProgressPainter(
                                controller.progressValue.value,
                                controller.totalValue),
                            child: SizedBox(
                              width: 150,
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "${((controller.progressValue.value / controller.totalValue) * 100).toStringAsFixed(0)}%",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff17689C)),
                          ),
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
