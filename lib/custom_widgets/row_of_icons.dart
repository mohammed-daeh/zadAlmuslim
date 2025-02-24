// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quran/core/translation/translation.dart';

class IconWithLabel extends StatelessWidget {
  final String iconPath;
  final String label;

  const IconWithLabel({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: SizedBox(
        height: 68,
        width: 54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              Utils.localize(label),
              style: TextStyle(
                color: Color(0xff062437),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollControllerX extends GetxController {
  var scrollOffset = 0.0.obs;
  var maxScroll = 0.0.obs;
}

class IconRowWidget extends StatelessWidget {
  const IconRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollControllerX controller = Get.put(ScrollControllerX());
    ScrollController scrollController = ScrollController();

    return Column(
      children: [
        NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            if (notification is ScrollUpdateNotification) {
              controller.scrollOffset.value = notification.metrics.pixels;
              controller.maxScroll.value = notification.metrics.maxScrollExtent;
            }
            return true;
          },
          child: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: IconWithLabel(
                    iconPath: 'assets/icons/player.svg',
                    label: 'prayer',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: IconWithLabel(
                    iconPath: 'assets/icons/qibla.svg',
                    label: 'qibla',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: IconWithLabel(
                    iconPath: 'assets/icons/hadith.svg',
                    label: 'hadith',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: IconWithLabel(
                    iconPath: 'assets/icons/tesbih.svg',
                    label: 'tesbih',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: IconWithLabel(
                    iconPath: 'assets/icons/podcast.svg',
                    label: 'podcast',
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: IconWithLabel(
                    iconPath: 'assets/icons/videos.svg',
                    label: 'videos',
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 60,
          height: 4,
          color: Color(0xffE0ECEE),
          child: Obx(
            () {
              double percentage = controller.maxScroll.value > 0
                  ? controller.scrollOffset.value / controller.maxScroll.value
                  : 0;

              double scrollBarPosition = percentage * (60 - 40);

              scrollBarPosition = scrollBarPosition.clamp(0.0, 20.0);

              return Stack(
                children: [
                  if (controller.scrollOffset.value > 0)
                    Positioned(
                      left: 0,
                      child: Icon(
                        Icons.arrow_left,
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(left: scrollBarPosition),
                    decoration: BoxDecoration(
                      color: Color(0xff124D73),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 40,
                    height: 4,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
