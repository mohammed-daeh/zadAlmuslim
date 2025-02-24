// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, deprecated_member_use


import 'package:flutter/material.dart';
import 'package:quran/custom_widgets/card/card_current_prayer.dart';
import 'package:quran/custom_widgets/card/card_date_location.dart';
import 'package:quran/custom_widgets/card/card_next_prayer.dart';
import 'package:quran/custom_widgets/card/card_set_your_daily.dart';
import 'package:quran/custom_widgets/card/card_start_your_quran.dart';
import 'package:quran/custom_widgets/card/card_todays_dua.dart';
import 'package:quran/custom_widgets/card/card_todays_hadith.dart';
import 'package:quran/custom_widgets/daytime_widget.dart';
import 'package:quran/custom_widgets/row_of_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            child: PictureDaytime(),
          ),
          Positioned(
            top: 52,
            left: 16,
            right: 202,
            child: CardDateLocation(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: 213,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                color: Color(0xffEEF5FA),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 66,
                    right: 0,
                    left: 0,
                    child: SizedBox(
                      height: 550,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: IconRowWidget(),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: SizedBox(
                                child: Column(
                                  children: [
                                    CardStartYourQuran(),
                                    CardSetYourDaily(),
                                    CardTodaysHadith(),
                                    CardTodaysDua(),
                                    SizedBox(
                                      height: 90,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 0,
                    right: 0,
                    child: ClipRect(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16)),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffEEF5FA).withOpacity(1),
                              Color(0xffEEF5FA).withOpacity(0.1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 199,
            left: 16,
            top: 165,
            child: CardCurrentPrayer(),
          ),
          Positioned(
            right: 16,
            left: 199,
            top: 165,
            child: CardNextPrayer(),
          ),
        ],
      ),
    );
  }
}
// // ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:quran/custom/card/card_current_prayer.dart';
// import 'package:quran/custom/card/card_date_location.dart';
// import 'package:quran/custom/card/card_next_prayer.dart';
// import 'package:quran/custom/card/card_set_your_daily.dart';
// import 'package:quran/custom/card/card_start_your_quran.dart';
// import 'package:quran/custom/card/card_todays_dua.dart';
// import 'package:quran/custom/card/card_todays_hadith.dart';
// import 'package:quran/custom/daytime_widget.dart';
// import 'package:quran/custom/row_of_icons.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           SizedBox(
//             height: double.infinity,
//             width: double.infinity,
//           ),
//           Positioned(
//             child: PictureDaytime(),
//           ),
//           Positioned(
//             top: 52,
//             left: 16,
//             right: 202,
//             child: CardDateLocation(),
           
//           ),
//           Positioned(
//             bottom: 0,
//             right: 0,
//             left: 0,
//             top: 213,
//             child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//                   color: Color(0xffEEF5FA),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 76.0, left: 16),
//                       child: IconRowWidget(),
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       child: SizedBox(
//                         height: 350,
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               CardStartYourQuran(),
                             
                             
//                               CardSetYourDaily(),
                           
                              
//                               CardTodaysHadith(),
                           
                             
//                               CardTodaysDua(),
                             
//                             ],
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 )),
//           ),
//           Positioned(
//             right: 199,
//             left: 16,
//             top: 165,
//             child: CardCurrentPrayer(),
//           ),
//           Positioned(
//             right: 16,
//             left: 199,
//             top: 165,
//             child: CardNextPrayer(),
//           ),
//         ],
//       ),
//     );
//   }
// }