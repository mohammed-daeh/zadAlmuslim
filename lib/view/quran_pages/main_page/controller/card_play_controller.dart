import 'package:get/get.dart';

class CardPlayController extends GetxController {
  var isPlaying = false.obs;
  void toggleVisibility() {
    isPlaying.toggle(); 
  }
}
