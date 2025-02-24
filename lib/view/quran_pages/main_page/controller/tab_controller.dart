import 'package:get/get.dart';

class TabControllerPageQuran extends GetxController {
  var indexPageQuran = 0.obs;

  void changeTab(int index) {
    indexPageQuran.value = index;
  }
}
