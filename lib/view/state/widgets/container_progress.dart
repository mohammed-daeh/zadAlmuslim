// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/state/widgets/custom_row_widget.dart';
import 'package:quran/view/state/widgets/progress_circle_painter.dart';

class ContainerProgress extends StatelessWidget {
  ContainerProgress({super.key});
  String time = '1h 23m';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: -10,
            left: -10,
            child: Container(
              height: 92,
              width: 92,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFFFFF).withAlpha(20),
                    Color(0xffF18C2C).withAlpha(10),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            )),
        Positioned(
            bottom: -20,
            right: -10,
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFFFFF).withAlpha(20),
                    Color(0xffF18C2C).withAlpha(30),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            )),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Color(0xffEEF5FA))),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Utils.localize('Time'),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff17689C)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomPaint(
                      size: const Size(120, 120),
                      painter: ProgressCirclePainter([
                        80,
                        60,
                        40,
                        20,
                      ]),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRowWidget(
                      title: Utils.localize('Quran'),
                      color: Color(0xff78DAF0),
                      pathSvg: 'assets/images/statePage/quran.svg',
                      time: time,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomRowWidget(
                      title: Utils.localize('Tasbih'),
                      color: Color(0xffCAE0CD),
                      pathSvg: 'assets/images/statePage/tasbih.svg',
                      time: time,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomRowWidget(
                      title: Utils.localize('Podcast'),
                      color: Color(0xffF4BD64),
                      pathSvg: 'assets/images/statePage/podcast.svg',
                      time: time,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomRowWidget(
                      title: Utils.localize('Dua'),
                      color: Color(0xff2BB649),
                      pathSvg: 'assets/images/statePage/dua.svg',
                      time: time,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
