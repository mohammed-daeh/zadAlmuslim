// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/state/widgets/custom_column_widget.dart';
import 'package:quran/view/state/widgets/half_circle_painter_widget.dart';

class ContainerTotalTime extends StatelessWidget {
  ContainerTotalTime({super.key});
  String time = '10h 23m';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xffEEF5FA))),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Utils.localize('TotalTime'),
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff17689C)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  size: Size(300, 150),
                  painter: HalfCirclePainterWidget([90, 80, 70, 50, 30, 10]),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff17689C)),
                      ),
                      Text(
                        'Avg. 2h/day',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff49454F),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomColumnWidget(
                    title: 'Quran Reading',
                    time: time,
                    color: Color(0xff78DAF0),
                    svgPath: 'assets/images/statePage/quran.svg',
                  ),
                  CustomColumnWidget(
                    title: 'Podcast',
                    time: time,
                    color: Color(0xffF4BD64),
                    svgPath: 'assets/images/statePage/podcast.svg',
                  ),
                  CustomColumnWidget(
                    title: 'Dua',
                    time: time,
                    color: Color(0xff2BB649).withAlpha(99),
                    svgPath: 'assets/images/statePage/dua.svg',
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomColumnWidget(
                    title: 'Tasbih',
                    time: time,
                    color: Color(0xffCAE0CD),
                    svgPath: 'assets/images/statePage/tasbih.svg',
                  ),
                  CustomColumnWidget(
                    title: 'Azkar Almasaa',
                    time: time,
                    color: Color(0xffFDE265),
                    svgPath: 'assets/images/statePage/Azkar_Almasaa.svg',
                  ),
                  CustomColumnWidget(
                    title: 'Azkar Alsabah',
                    time: time,
                    color: Color(0xffFF8B00),
                    svgPath: 'assets/images/statePage/Azkar_Alsabah.svg',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
