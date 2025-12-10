import 'package:get/get.dart';

class MealCardController extends GetxController {
  RxBool isExpanded = false.obs;

  void toggleExpand() {
    isExpanded.value = !isExpanded.value;
  }
}
