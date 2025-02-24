// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/colors_app/colors_app.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/quran_pages/start_khatma/khatmah_plan_view.dart';

class StartKhatam extends StatelessWidget {
  const StartKhatam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(gradient: myLinearGradient),
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: 110,
              child: SvgPicture.asset(
                'assets/images/khatamPage/zagrafa_vertical.svg',
              ),
            ),
          ),
          Positioned(
            top: 260,
            bottom: 260,
            right: 26,
            left: 26,
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/khatamPage/quran_splash.svg',
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  Utils.localize('khatam_splash'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => KhatmahPlanView()));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xffEEF7F9),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Utils.localize('planMyOwnKhatmah'),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(
                              0xff124D73,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        SvgPicture.asset(
                            'assets/images/khatamPage/arrow_right_blue.svg')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 55,
            left: 16,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                  'assets/images/khatamPage/arrow_back_white.svg',width: 16,height: 16,),
            ),
          )
        ],
      ),
    );
  }
}
