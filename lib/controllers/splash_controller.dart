import 'dart:async';
import 'package:get/get.dart';
import '../../../core/routs/routs.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToLogin();
  }

  void navigateToLogin() {
    Timer(Duration(milliseconds: 300), () {
      Get.offAllNamed(Routes.loginScreen);
    });
  }
}
