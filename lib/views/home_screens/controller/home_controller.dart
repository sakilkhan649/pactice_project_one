import 'package:get/get.dart';

import '../checkin_screen.dart';
import '../daily_screen/daily_screen.dart';
import '../diet_screen.dart';
import '../profile_screen.dart';
import '../training_screen.dart';



class BottomNabBarController extends GetxController{
  /// <=========== Bottom Navigation Bar ===============>///

  RxInt currentIndex = 0.obs;

  RxList pages = [
    DailyScreen(),
    CheckinScreen(),
    TrainingScreen(),
    DietScreen(),
    ProfileScreen(),

  ].obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}