import 'package:get/get.dart';

class DietController extends GetxController {
  // Macros
  RxDouble protein = 145.0.obs;
  RxDouble proteinGoal = 180.0.obs;

  RxDouble carbs = 200.0.obs;
  RxDouble carbsGoal = 240.0.obs;

  RxDouble fat = 14.0.obs;
  RxDouble fatGoal = 180.0.obs;

  RxDouble calories = 1850.0.obs;
  RxDouble caloriesGoal = 2500.0.obs;
}
