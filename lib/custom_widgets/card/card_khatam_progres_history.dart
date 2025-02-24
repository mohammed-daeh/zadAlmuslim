// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quran/core/translation/translation.dart';

class CardKhatamProgresHistory extends StatelessWidget {
  const CardKhatamProgresHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Utils.localize('history'),
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
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffF9F8F4),
            ),
            child: Text(
              Utils.localize('youHaveNoCompletedQuranReadingYet'),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff124D73),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
