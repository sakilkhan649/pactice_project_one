import 'package:get/get.dart';
import '../../views/home_screens/controller/home_controller.dart';
import '../../views/home_screens/daily_screen/controller/daily_screen_controller.dart';

class Dependencys extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNabBarController());
    Get.put(DailyScreenController());
  }
}
