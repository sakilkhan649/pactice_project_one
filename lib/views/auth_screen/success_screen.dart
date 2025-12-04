import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_images/app_images.dart';
import '../../core/routs/routs.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Text.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.w, 272.w, 25.w, 30.w),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 119.h,
                  width: 119.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(AppImages.Simplification),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomText(text: "your password has been"),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomText(text: "changed successfully"),
              ),
              SizedBox(height: 32.h),
              CustomButton(
                text: "Back to home",
                onPressed: () {
                  Get.toNamed(Routes.homeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
