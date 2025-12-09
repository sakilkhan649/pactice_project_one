import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/views/home_screens/training_screen/widgets/Custom_container.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../../widgets/Custom_AppBar.dart';
import '../../../widgets/Custom_back_button.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Training", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(25.w, 60.w, 25.w, 209.w),
          child: Column(
            children: [
              ///=========================Row horizental=========================
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      borderColor: AppColors.orenge200,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.capetwoion,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(height: 10.h),
                          CustomText(
                            text: "12",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 10.h),
                          CustomText(
                            text: "PR’s this week",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: CustomContainer(
                      borderColor: AppColors.blue700,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.hemaricon,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(height: 10.h),
                          CustomText(
                            text: "4850 kg",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 10.h),
                          CustomText(
                            text: "Weekly Volume",
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: CustomContainer(
                      borderColor: AppColors.orenge300,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppIcons.agunicon,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(height: 10.h),
                          CustomText(
                            text: "5",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 10.h),
                          CustomText(
                            text: "Trainings",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22.h),

              ///=======================Row vertical One ======================
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.exercisesScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.green100,
                      child: Column(
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.exercisesicon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "EXERCISES",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "Database",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.trainingPlanScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.blue700,
                      child: Column(
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.trainingplanicon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "TRAINING PLAN",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "Weekly Overview",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),

              ///=======================Row vertical Two ======================
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.historieScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.orenge300,
                      child: Column(
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.historieicon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "HISTORIE",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "Past Workouts",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),

                  ///=======================Row vertical Three ======================
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.trainingSplitScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.orenge400,
                      child: Column(
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.trainingspliticon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "TRAINING SPLIT",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "View Training Split",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
