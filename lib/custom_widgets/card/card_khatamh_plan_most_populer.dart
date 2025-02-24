// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/quran_pages/start_khatma/start_from_khatam_view.dart';

class CardKhatamhPlanMostPopuler extends StatelessWidget {
  const CardKhatamhPlanMostPopuler({super.key});
  final int count = 30;
  final int countJuz = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Utils.localize('mostPopuler'),
          style: TextStyle(
            color: Color(0xff062437),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          width: 32,
          height: 2,
          color: Color(0xffF6DAC2),
        ),
        SizedBox(
          height: 16,
        ),
        Stack(children: [
          Container(
              width: double.infinity,
              height: 128,
              decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color(0xffEEF5FA),
                ),
              )),
          Positioned(
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SvgPicture.asset(
                'assets/images/khatamPage/background_container.svg',
                // width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xffFFF1E0), shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          'assets/images/khatamPage/quran_icon.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '$count - ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff124D73)),
                              ),
                              Text(
                                Utils.localize('daykhatma'),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff124D73)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                Utils.localize('dailyReading'),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff124D73)),
                              ),
                              Text(
                                ': $countJuz Juz ',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff124D73)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StartFromKhatamView(),
                          ));
                    },
                    child: Container(
                      width: 180,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFF2E5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Utils.localize('startNow'),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff124D73)),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          SvgPicture.asset(
                              'assets/images/khatamPage/arrow_right_yallow.svg')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
