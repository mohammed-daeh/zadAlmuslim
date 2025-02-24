// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quran/custom_widgets/card/card_player.dart';
import 'package:quran/view/quran_pages/main_page/controller/card_play_controller.dart';

import 'package:quran/view/quran_pages/main_page/views/header_page.dart';
import 'package:quran/view/quran_pages/main_page/views/tab_bar_quran.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});
  final CardPlayController isPlayer = Get.put(CardPlayController());
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
          Container(
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff134e74),
              Color(0xff2b6b89),
            ], begin: Alignment.topRight, end: Alignment.topLeft)),
          ),
          SvgPicture.asset('assets/images/quranPage/zagrafa_blue.svg',
              width: double.infinity, height: 250, fit: BoxFit.cover),
          Positioned(
            right: 16,
            left: 16,
            top: 50,
            child: HeaderPage(),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 172,
            bottom: 0,
            child: TabBarQuran(),
          ),
          Positioned(
            right: 16,
            left: 16,
            // top: 0,
            bottom: 80,
            child: Obx(() {
              return Visibility(
                visible: isPlayer.isPlaying.value,
                child: CardPlayer(),
              );
            }),
          ),
        ],
      ),
    );
  }
}
