import 'package:get/get.dart';

import '../task_screens/task_screen.dart';
import '../daily_screen/daily_screen.dart';
import '../diet_screen/diet_screen.dart';
import '../profile_daily_screen.dart';
import '../training_screen/training_screen.dart';



class BottomNabBarController extends GetxController{
  /// <=========== Bottom Navigation Bar ===============>///

  RxInt currentIndex = 0.obs;

  RxList pages = [
    DailyScreen(),
    TaskScreen(),
    TrainingScreen(),
    DietScreen(),
    ProfileDailyScreen(),

  ].obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}