import 'package:get/get.dart';

class TabBarControllerPageStatistics extends GetxController {
  var indexPageQuran = 0.obs;

  void changeTab(int index) {
    indexPageQuran.value = index;
  }
}
