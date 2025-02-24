// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';

class CardLastTrakedJuzu extends StatelessWidget {
  CardLastTrakedJuzu({super.key});
  int number = 2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Utils.localize('lastTrakedJuzu'),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 64,
            // width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffF9F8F4),
            ),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: SvgPicture.asset(
                    'assets/images/khatamPage/quran_icon.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Juzu $number',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff124D73),
                      ),
                    ),
                    Text(
                      Utils.localize('continueReading'),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff124D73),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/khatamPage/arrow_right_icon.svg',
                      width: 11,
                      height: 11,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
