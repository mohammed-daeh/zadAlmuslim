// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomColumnWidget extends StatelessWidget {
  Color color;
  String title;
  String svgPath;
  String time;
  CustomColumnWidget(
      {super.key,
      required this.color,
      required this.svgPath,
      required this.time,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 94,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: SvgPicture.asset(
              svgPath,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff49454F)),
          ),
          Text(
            time,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff17689C)),
          ),
        ],
      ),
    );
  }
}
