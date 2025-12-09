import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_Button.dart';
import '../../../../widgets/Custom_back_button.dart';

class TrainingPlanTreamScreen extends StatelessWidget {
  const TrainingPlanTreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Training plan", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(22.w, 37.w, 22.w, 60.w),
          child: Column(
            children: [
              CustomBox(
                height: 550.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    CustomText(
                      text: "Arms",
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 20.h),
                    CustomText(
                      text: " Last performed 12 days ago",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 25.h),

                    ///====================Circle One=======================
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.gray300,
                        ),
                        SizedBox(width: 5.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "2 X Lateral Raise (Machine) ",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 11.h),
                            CustomText(
                              text: "Shoulders ",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    ///====================Circle Two=======================
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.gray300,
                        ),
                        SizedBox(width: 5.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "3 x  Bicep Curl (Cable)",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 11.h),
                            CustomText(
                              text: "Arms",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    ///====================Circle Three=======================
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.gray300,
                        ),
                        SizedBox(width: 5.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "2 x Triceps Extension ( Mechine) ",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 11.h),
                            CustomText(
                              text: "Arms",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    ///====================Circle Four=======================
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.gray300,
                          child: CustomText(
                            text: "Y",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "2 x Y-Raisel",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 11.h),
                            CustomText(
                              text: "Shoulders",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    ///====================Circle Five=======================
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.gray300,
                          child: CustomText(
                            text: "U",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "2 x Smith Machine Shoulders ",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 11.h),
                            CustomText(
                              text: "Press Shoulders",
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 44.h,),
              ///==============Submit Button========================
              CustomButton(text: "Workout beginner", onPressed: () {
                Get.toNamed(Routes.pushDayScreen);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
