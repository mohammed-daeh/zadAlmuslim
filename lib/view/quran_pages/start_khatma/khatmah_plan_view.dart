// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:quran/custom_widgets/appbar/custom_app_bar_zagrafa.dart';
import 'package:quran/custom_widgets/card/card_khatamh_plan_most_populer.dart';
import 'package:quran/custom_widgets/card/card_khatamh_plan_other.dart';

class KhatmahPlanView extends StatelessWidget {
  const KhatmahPlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomAppBarZagrafa(
            titel: 'khatmahPlan',
            sizeAppBar: 90,
            body: Padding(
              padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardKhatamhPlanMostPopuler(),
                  SizedBox(
                    height: 16,
                  ),
                  CardKhatamhPlanOther()
                ],
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
