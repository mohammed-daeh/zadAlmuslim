// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';

class CardKhatamhPlanOther extends StatelessWidget {
  CardKhatamhPlanOther({super.key});
  List<int> dayes = [
    240,
    120,
    80,
    60,
    40,
    30,
    15,
    240,
    120,
    80,
    60,
    40,
    30,
    15
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Utils.localize('other'),
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
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 0),
              itemCount: dayes.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0xffE0ECEE), width: 1))),
                  // height: 74,
                  // width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${dayes[index]}-',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff124D73)),
                          ),
                          Text(
                            Utils.localize('dayKhatma'),
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff124D73)),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'assets/images/khatamPage/arrow_right_icon.svg',
                              width: 11,
                              height: 11,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            Utils.localize('dailyReading'),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff124D73)),
                          ),
                          Text(
                            ': ${1} ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff124D73)),
                          ),
                          Text(
                            Utils.localize('quarters'),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff124D73)),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
