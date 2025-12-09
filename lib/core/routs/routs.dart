import 'package:get/get.dart';
import 'package:newproject/views/auth_screen/forgot_screen.dart';
import 'package:newproject/views/auth_screen/login_screen.dart';
import 'package:newproject/views/auth_screen/new_password_screen.dart';
import 'package:newproject/views/auth_screen/otp_screen.dart';
import 'package:newproject/views/auth_screen/splash_screen.dart';
import 'package:newproject/views/auth_screen/success_screen.dart';
import 'package:newproject/views/home_screens/daily_screen/daily_screen.dart';
import 'package:newproject/views/home_screens/training_screen/exercises_screens/exercises_screen.dart';
import 'package:newproject/views/home_screens/training_screen/exercises_screens/vedio_screen/vedio_screen.dart';
import 'package:newproject/views/home_screens/training_screen/historie_screen/historie_screen.dart';
import 'package:newproject/views/home_screens/training_screen/historie_screen/pull_fullbody_screen.dart';
import 'package:newproject/views/home_screens/training_screen/training_plan_screen/push_day_screen/push_day_screen.dart';
import 'package:newproject/views/home_screens/training_screen/training_plan_screen/training_plan_screen.dart';
import 'package:newproject/views/home_screens/training_screen/training_plan_screen/training_plan_tream_screen.dart';
import 'package:newproject/views/home_screens/training_screen/training_split_screen/training_split_screen.dart';

import '../../views/home_screens/home_screen.dart';

class Routes {
  static const String splashScreen = "/SplashScreen";
  static const String loginScreen = "/LoginScreen";
  static const String forgotScreen = "/ForgotScreen";
  static const String otpScreen = "/OtpScreen";
  static const String newPasswordScreen = "/NewPasswordScreen";
  static const String successScreen = "/SuccessScreen";
  static const String homeScreen = "/HomeScreen";
  static const String exercisesScreen = "/ExercisesScreen";
  static const String vedioScreen = "/VedioScreen";
  static const String trainingPlanScreen = "/TrainingPlanScreen";
  static const String historieScreen = "/HistorieScreen";
  static const String trainingSplitScreen = "/TrainingSplitScreen";
  static const String trainingPlanTreamScreen = "/TrainingPlanTreamScreen";
  static const String pushDayScreen = "/PushDayScreen";
  static const String pullFullbodyScreen = "/PullFullbodyScreen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => SplashScreen(),transition: Transition.fadeIn),
    GetPage(name: loginScreen, page: () => LoginScreen(),transition: Transition.fadeIn),
    GetPage(name: forgotScreen, page: () => ForgotScreen(),transition: Transition.fadeIn),
    GetPage(name: otpScreen, page: () => OtpScreen(),transition: Transition.fadeIn),
    GetPage(name: newPasswordScreen, page: () => NewPasswordScreen(),transition: Transition.fadeIn),
    GetPage(name: successScreen, page: () => SuccessScreen(),transition: Transition.fadeIn),
    GetPage(name: homeScreen, page: () => HomeScreen(),transition: Transition.fadeIn),
    GetPage(name: exercisesScreen, page: () => ExercisesScreen(),transition: Transition.fadeIn),
    GetPage(name: vedioScreen, page: () => VedioScreen(),transition: Transition.fadeIn),
    GetPage(name: trainingPlanScreen, page: () => TrainingPlanScreen(),transition: Transition.fadeIn),
    GetPage(name: historieScreen, page: () => HistorieScreen(),transition: Transition.fadeIn),
    GetPage(name: trainingSplitScreen, page: () => TrainingSplitScreen(),transition: Transition.fadeIn),
    GetPage(name: pushDayScreen, page: () => PushDayScreen(),transition: Transition.fadeIn),
    GetPage(name: pullFullbodyScreen, page: () => PullFullbodyScreen(),transition: Transition.fadeIn),
    GetPage(name: trainingPlanTreamScreen, page: () => TrainingPlanTreamScreen(),transition: Transition.fadeIn),
  ];
}
