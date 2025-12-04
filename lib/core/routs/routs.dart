import 'package:get/get.dart';
import 'package:newproject/views/auth_screen/forgot_screen.dart';
import 'package:newproject/views/auth_screen/login_screen.dart';
import 'package:newproject/views/auth_screen/new_password_screen.dart';
import 'package:newproject/views/auth_screen/otp_screen.dart';
import 'package:newproject/views/auth_screen/splash_screen.dart';
import 'package:newproject/views/auth_screen/success_screen.dart';
import 'package:newproject/views/home_screens/daily_screen.dart';

import '../../views/home_screens/home_screen.dart';

class Routes {
  static const String splashScreen = "/SplashScreen";
  static const String loginScreen = "/LoginScreen";
  static const String forgotScreen = "/ForgotScreen";
  static const String otpScreen = "/OtpScreen";
  static const String newPasswordScreen = "/NewPasswordScreen";
  static const String successScreen = "/SuccessScreen";
  static const String homeScreen = "/HomeScreen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => SplashScreen(),transition: Transition.fadeIn),
    GetPage(name: loginScreen, page: () => LoginScreen(),transition: Transition.fadeIn),
    GetPage(name: forgotScreen, page: () => ForgotScreen(),transition: Transition.fadeIn),
    GetPage(name: otpScreen, page: () => OtpScreen(),transition: Transition.fadeIn),
    GetPage(name: newPasswordScreen, page: () => NewPasswordScreen(),transition: Transition.fadeIn),
    GetPage(name: successScreen, page: () => SuccessScreen(),transition: Transition.fadeIn),
    GetPage(name: homeScreen, page: () => HomeScreen(),transition: Transition.fadeIn),
  ];
}
