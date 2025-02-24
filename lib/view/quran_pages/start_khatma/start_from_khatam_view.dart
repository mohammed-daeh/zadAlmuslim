// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran/core/translation/translation.dart';
import 'package:quran/custom_widgets/appbar/custom_app_bar_zagrafa.dart';
import 'package:quran/view/quran_pages/start_khatma/khatma_progress_view.dart';

class StartFromKhatamView extends StatelessWidget {
  const StartFromKhatamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomAppBarZagrafa(
            titel: 'startfrom',
            sizeAppBar: 90,
            body: Padding(
              padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Utils.localize('readingPlan'),
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
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color(0xffE0ECEE), width: 1))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      Utils.localize('day'),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff124D73)),
                                    ),
                                    Text(
                                      ' ${index + 1}',
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
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'From fatiha 1 To Baqara 147',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff124D73)),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 16,
            left: 16,
            bottom: 25,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KhatmaProgressView(),
                    ));
              },
              child: Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFF2E5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Utils.localize('startFromBeginingOfQuran'),
                      style: TextStyle(
                          fontSize: 14,
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
