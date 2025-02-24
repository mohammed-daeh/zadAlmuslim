// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<String> activeIcons;
  final List<String> inactiveIcons;
  final int selectedIndex;
  final Function(int) onTabSelected;

  const CustomBottomNavigationBar({
    Key? key,
    required this.activeIcons,
    required this.inactiveIcons,
    required this.selectedIndex,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 11,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(activeIcons.length, (index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => onTabSelected(index),
            child: Container(
              width: 62,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    isSelected ? activeIcons[index]: inactiveIcons[index],
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
