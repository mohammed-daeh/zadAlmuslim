// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';

class ContainerTesbih extends StatelessWidget {
  ContainerTesbih({super.key});
  String count = '500';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffEEF5FA)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              child: SvgPicture.asset(
                'assets/images/quran.svg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        Utils.localize('Tesbih'),
                        style: TextStyle(
                          color: Color(0xff17689C),
                          fontSize: 16,
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        'assets/icons/arrow_right.svg',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: count,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff17689C),
                          ),
                        ),
                        TextSpan(
                          text: Utils.localize('times'),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
