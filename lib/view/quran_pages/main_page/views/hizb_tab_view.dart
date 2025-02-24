// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:quran/custom_widgets/card/card_quran_hizb.dart';
import 'package:quran/custom_widgets/text_fields_widgets/text_field_search_quran.dart';
import 'package:quran/view/quran_pages/main_page/data/map_card_hizb.dart';

class HizbTabView extends StatelessWidget {
  HizbTabView({super.key});
  TextEditingController searchJuzView = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          TextFieldSearchQuran(
            controller: searchJuzView,
          ), // CardQuranSura(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: mapCardHizb.length,
              itemBuilder: (context, index) {
                return CardQuranHizb(
                  hizbNumber: mapCardHizb[index]['hizbNumber'].toString(),
                  hizbName: mapCardHizb[index]['hizbName'].toString(),
                  count: mapCardHizb[index]['count'].toString(),
                  sura: mapCardHizb[index]['sura'].toString(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
