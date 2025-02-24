// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';

class CardFromToProgres extends StatelessWidget {
  CardFromToProgres({super.key});
  int day = 10;
  String sura = 'bakara';
  String numberFrom = '142';
  String alSuraFrom =
      'سَيَقُولُ ٱلسُّفَهَآءُ مِنَ ٱلنَّاسِ مَا وَلَّىٰهُمْ عَن قِبْلَتِهِمُ ٱلَّتِى كَانُواْ عَلَيْهَا ۚ قُل لِّلَّهِ ٱلْمَشْرِقُ وَٱلْمَغْرِبُ ۚ يَهْدِى مَن يَشَآءُ إِلَىٰ صِرَٰطٍۢ مُّسْتَقِيمٍۢ';
  String numberTo = '252';
  String alSuraTo =
      'تلك آيات الله نتلوها عليك بالحق فبأي حديث بعد الله وآياته يؤمنون';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                Utils.localize('day'),
                style: TextStyle(
                  color: Color(0xff062437),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                ' $day',
                style: TextStyle(
                  color: Color(0xff062437),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
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
              height: 324,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Color(0xffE0ECEE))),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(24)),
                child: SvgPicture.asset(
                  'assets/images/khatamPage/orange_circle1.svg',
                  width: 92,
                  height: 92,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(24)),
                child: SvgPicture.asset(
                  'assets/images/khatamPage/orange_circle2.svg',
                  width: 92,
                  height: 92,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 132,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              Utils.localize('from'),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff062437),
                              ),
                            ),
                            Text(
                              ' $sura: $numberFrom',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff062437),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          alSuraFrom,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff124D73),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Color(0xffE0ECEE),
                        ),
                      ),
                    ),
                    height: 120,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              Utils.localize('to'),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff062437),
                              ),
                            ),
                            Text(
                              ' $sura: $numberTo',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff062437),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          alSuraTo,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff124D73),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFF2E5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Utils.localize('completeThisDay'),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff124D73),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset(
                          'assets/images/khatamPage/complete_icon_yallow.svg',
                          width: 16,
                          height: 16,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ]),
        ],
      ),
    );
  }
}
