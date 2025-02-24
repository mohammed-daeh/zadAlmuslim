// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/view/quran_pages/start_khatma/start_khatam.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});
// bool history
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          Utils.localize('Quran'),
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/quranPage/quran_white.svg',
              width: 24,
              height: 24,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              Utils.localize('Al_Faatiha'),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    Utils.localize('StartReading'),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrow_right_white.svg',
                    width: 13,
                    height: 13,
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/quranPage/Reading_plan.svg',
              width: 24,
              height: 24,
              // color: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              Utils.localize('Readingplan'),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => StartKhatam()));
              },
              child: Text(
                Utils.localize('StartKhatam'),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            SvgPicture.asset(
              'assets/icons/arrow_right_white.svg',
              width: 13,
              height: 13,
            ),
          ],
        )
      ],
    );
  }
}
