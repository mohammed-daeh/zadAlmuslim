// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/custom_widgets/appbar/custom_app_bar_zagrafa.dart';
import 'package:quran/custom_widgets/card/card_khatam_progress_history.dart';
import 'package:quran/view/quran_pages/start_khatma/khatmah_details_view.dart';

class KhatmaProgressView extends StatelessWidget {
  const KhatmaProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomAppBarZagrafa(
            titel: 'khatmaProgress',
            sizeAppBar: 394,
            body: Padding(
              padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
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
                  Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.only(top: 0),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return CardKhatamProgressHistory(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>KhatmahDetailsView()));
                            },);
                          }))
                ],
              ),
            ),
          ),
          Positioned(
            right: 26,
            left: 26,
            top: 100,
            child: Column(
              children: [
                Text(
                  '( وَلَقَدْ يَسَّرْنَا الْقُرْءَانَ لِلذِّكْرِ فَهَلْ مِن مُّدَّكِرٍ )',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  Utils.localize('beginChapter'),
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
                SvgPicture.asset(
                  'assets/images/khatamPage/quran_splash.svg',
                  width: 148,
                ),
                SizedBox(
                  height: 29,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffEEF7F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Utils.localize('planNewKhatmah'),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff124D73),
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
              right: 113,
              left: 113,
              bottom: 8,
              child: Container(
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
              ))
        ],
      ),
    );
  }
}
