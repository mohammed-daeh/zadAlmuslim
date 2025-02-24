// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';

class CardKhatamProgressHistory extends StatelessWidget {
  CardKhatamProgressHistory({super.key, required this.onTap});
    final VoidCallback onTap;

  String startTime = '12/08/2023';
  String endTime = '01/02/2024';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(onTap: onTap,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xffE0ECEE),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF1E0),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/khatamPage/quran_icon1.svg',
                        width: 24,
                        height: 24,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Utils.localize('khatmaName'),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff124D73),
                          ),
                        ),
                        Text(
                          '$startTime - $endTime',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff124D73),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
                child: SvgPicture.asset(
                  'assets/images/khatamPage/orange_circle.svg',
                  // width: 80,
                  // height: 80,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
