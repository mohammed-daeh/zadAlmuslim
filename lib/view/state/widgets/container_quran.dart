// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';

class ContainerQuran extends StatelessWidget {
  ContainerQuran({super.key});
  String khatmah = '1';
  String page = '340';
  String juzu = '30';
  String avg = '20';
  @override
  Widget build(BuildContext context) {
    return Container(
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
            // bottom: 0,
            // top: 0,
            child: SvgPicture.asset(
              'assets/images/statePage/qq.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Utils.localize('Quran'),
                  style: TextStyle(
                    color: Color(0xff17689C),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Utils.localize('Page'),
                          style: TextStyle(
                            color: Color(0xff49454F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          page,
                          style: TextStyle(
                            color: Color(0xffF18C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Utils.localize('Khatmah'),
                          style: TextStyle(
                            color: Color(0xff49454F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          khatmah,
                          style: TextStyle(
                            color: Color(0xffF18C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Utils.localize('Juzu'),
                          style: TextStyle(
                            color: Color(0xff49454F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          juzu,
                          style: TextStyle(
                            color: Color(0xffF18C2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                  height: 8,
                ),
                Text(
                  Utils.localize('Average quran page'),
                  style: TextStyle(
                      color: Color(0xff17689C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: avg,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF18C2C),
                        ),
                      ),
                      TextSpan(
                        text: Utils.localize('daily'),
                        style: TextStyle(
                          fontSize: 14,
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
    );
  }
}
