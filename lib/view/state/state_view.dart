// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/colors_app/colors_app.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/state/tab_bar_statistics/tab_bar_statistics.dart';

class StateView extends StatelessWidget {
  const StateView({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(gradient: myLinearGradient),
        ),
        Positioned(
          left: 0,
          child: SvgPicture.asset(
            'assets/images/khatamPage/zagrafa_horizontal.svg',
          ),
        ),
        Positioned(
          top: 46,
          left: 0,
          right: 0,
          child: Container(
            height: 40,
            alignment: Alignment.center,
            child: Text(
              Utils.localize('Statistics'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 90,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: TabBarStatistics(),
          ),
        )
      ],
    );
  }
}
