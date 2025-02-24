
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/custom_widgets/bottom_navigation_bar/custom_navigation_bar.dart';
import 'package:quran/custom_widgets/bottom_navigation_bar/custom_navigation_controllar.dart';
import 'package:quran/view/home_page.dart';
import 'package:quran/view/state/state_view.dart';
import 'package:quran/view/page4/page4.dart';
import 'package:quran/view/quran_pages/main_page/quran_view.dart';
import 'package:quran/view/dua/dua_view.dart';

class BottomNavigationBarView extends StatelessWidget {
  BottomNavigationBarView({super.key});

  final List<Widget> _pages = [
    HomePage(),
    QuranView(),
    DuaView(),
    StateView(),
    Page4(),
  ];

  final UserBottomNavController _controller =
      Get.put(UserBottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Obx(() => _pages[_controller.selectedIndex.value]),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Obx(() => CustomBottomNavigationBar(
                    activeIcons: _controller.iconPathsActive,
                    inactiveIcons: _controller.iconPathsInactive,
                    selectedIndex: _controller.selectedIndex.value,
                    onTabSelected: _controller.changeTabIndex,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
