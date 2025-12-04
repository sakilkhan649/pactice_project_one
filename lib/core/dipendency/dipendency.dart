import 'package:get/get.dart';
import 'package:newproject/views/auth_screen/forgot_screen.dart';
import 'package:newproject/views/auth_screen/login_screen.dart';
import 'package:newproject/views/auth_screen/new_password_screen.dart';
import 'package:newproject/views/auth_screen/otp_screen.dart';
import 'package:newproject/views/auth_screen/splash_screen.dart';
import 'package:newproject/views/auth_screen/success_screen.dart';
import 'package:newproject/views/home_screens/daily_screen.dart';

import '../../views/home_screens/home_screen.dart';

class Dependencys extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreen());
    Get.lazyPut(() => LoginScreen());
    Get.lazyPut(() => ForgotScreen());
    Get.lazyPut(() => OtpScreen());
    Get.lazyPut(() => NewPasswordScreen());
    Get.lazyPut(() => SuccessScreen());
    Get.lazyPut(() => HomeScreen());
  }
}

