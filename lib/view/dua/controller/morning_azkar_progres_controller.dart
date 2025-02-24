import 'package:get/get.dart';

class MorningAzkarProgresController extends GetxController {
  int maxValue = 10;
  RxInt currentValue = 3.obs;


  @override
  void refresh() {
    currentValue +=1 ;
  }
 
}
