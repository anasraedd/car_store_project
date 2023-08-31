import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class StaticActionsForMultiScreenGetxVontroller extends GetxController {
  RxBool isShowPassword = false.obs;
  RxString countrySelected = 'Nothing'.obs;
  RxString searchWord = ''.obs;
  RxString letterSelectedToFilter = 'A'.obs;

  RxInt selectedIndex = 0.obs;

  RxList searchCountries = [].obs;

  RxList<String> countries = [
    'Aledela',
    'Arles',
    'Aichi',
    'BBBBBb',
    'CCCCCC',
    'hdela',
    'Arles',
    'Aichi',
    'BBBBBb',
    'CCCCCC',
    'ledela',
    'rles',
    'ichi',
    'BBBBBb',
    'CCCCCC',
    'Aledela',
    'Arles',
    'Aichi',
    'BBBBBb',
    'CCCCCC',
  ].obs;

  RxList<String> letters = [
    '#',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ].obs;

  // List searchCountries = countries.where((p0) => p0 =='').toList();

  static StaticActionsForMultiScreenGetxVontroller get to => Get.find();
}
