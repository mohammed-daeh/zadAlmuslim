// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/custom_widgets/appbar/custom_app_bar_zagrafa.dart';
import 'package:quran/custom_widgets/card/card_from_to_progres.dart';
import 'package:quran/custom_widgets/card/card_khatam_progres_history.dart';
import 'package:quran/custom_widgets/card/card_last_traked_juzu.dart';
import 'package:quran/custom_widgets/card/card_your_progres.dart';
import 'package:quran/custom_widgets/progress_circle_widget.dart';

class KhatmahDetailsView extends StatelessWidget {
  KhatmahDetailsView({super.key});
  String createdAt = '12-8-2024';
  int number = 240;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomAppBarZagrafa(
            titel: 'khatmaProgress',
            sizeAppBar: 310,
            action: SvgPicture.asset(
              'assets/images/khatamPage/remove_icon.svg',
              height: 16,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CardFromToProgres(),
                  CardYourProgres(),
                  CardLastTrakedJuzu(),
                  CardKhatamProgresHistory(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 90,
            right: 85,
            left: 85,
            child: Column(
              children: [
                ProgressCircle(
                  progress: 22,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$number-',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      Utils.localize('dayKhatma'),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/images/khatamPage/edite.svg',
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Utils.localize('createdAt'),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      ' $createdAt',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
