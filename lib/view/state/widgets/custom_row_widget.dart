// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomRowWidget extends StatelessWidget {
  CustomRowWidget(
      {super.key,
      required this.title,
      required this.pathSvg,
      required this.color,
      required this.time});
  String title;
  String time;
  String pathSvg;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color
              // color: Color(0xff78DAF0),
              ),
          child: SvgPicture.asset(
            pathSvg,
            // 'assets/images/statePage/quran.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          width: 9,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              // Utils.localize('Quran'),
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            Text(
              time,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff17689C)),
            ),
          ],
        )
      ],
    );
  }
}
