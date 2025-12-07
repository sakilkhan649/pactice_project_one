import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.black100,
        ),
        debugShowCheckedModeBanner: false,
        getPages: Routes.routes,
        initialRoute: Routes.splashScreen,
      ),
    );
  }
}
