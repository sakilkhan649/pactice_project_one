import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_images/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/splash_controller.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(53.w, 216.w, 67.w, 349.w),
        child: Container(
          height: 390.h,
          width: 320.w,
          child: Image.asset(AppImages.logo_Small),
        ),
      ),
    );
  }
}
