import 'package:get/get.dart';

class Trackcardcontroller extends GetxController {
  RxBool isExpanded = false.obs;

  void toggleExpand() {
    isExpanded.value = !isExpanded.value;
  }
}
