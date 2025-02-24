import 'package:flutter/material.dart';
import 'package:quran/core/translation/translation.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            Utils.changeLanguage('en');
            (context as Element).markNeedsBuild();
          },
          child: Text('Change to English'),
        ),
        ElevatedButton(
          onPressed: () {
            Utils.changeLanguage('tr');
            (context as Element).markNeedsBuild();
          },
          child: Text('تغيير إلى التركية'),
        ),
      ],
    ));
  }
}
