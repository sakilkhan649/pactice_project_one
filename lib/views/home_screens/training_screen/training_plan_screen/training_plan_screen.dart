import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/views/home_screens/training_screen/widgets/Custom_container.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';

class TrainingPlanScreen extends StatelessWidget {
  const TrainingPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Training plan", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(25.w, 45.w, 25.w, 209.w),
          child: Column(
            children: [
              ///=======================Row vertical One ======================
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.trainingPlanTreamScreen);
                      },
                      borderColor: AppColors.green100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20.h),
                          CustomText(
                            text: "PLACEHOLDER",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "No Exercises",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 6.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.ri_time_icon,
                                height: 24.h,
                                width: 24.w,
                              ),
                              SizedBox(width: 5.w),
                              CustomText(
                                text: "10-10-2025",
                                color: AppColors.gray300,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.trainingPlanTreamScreen);
                      },
                      borderColor: AppColors.blue700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 16.h),
                          CustomText(
                            text: "TRAINING PLAN",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 8.h),
                          CustomText(
                            text: "Leterral Rise",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          CustomText(
                            text: "(Mechine)",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 6.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.ri_time_icon,
                                height: 24.h,
                                width: 24.w,
                              ),
                              SizedBox(width: 5.w),
                              CustomText(
                                text: "10-10-2025",
                                color: AppColors.gray300,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
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
                        Get.toNamed(Routes.trainingPlanTreamScreen);
                      },
                      borderColor: AppColors.green100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 14.h),
                          CustomText(
                            text: "PUSH FULLBODY",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "Lateral Rise",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          CustomText(
                            text: "(Dumbble)",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 6.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.ri_time_icon,
                                height: 24.h,
                                width: 24.w,
                              ),
                              SizedBox(width: 5.w),
                              CustomText(
                                text: "10-10-2025",
                                color: AppColors.gray300,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.trainingPlanTreamScreen);
                      },
                      borderColor: AppColors.blue700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 16.h),
                          CustomText(
                            text: "TRAININGS PLAN",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 8.h),
                          CustomText(
                            text: "Lateral Rise",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          CustomText(
                            text: "(Mechine)",
                            color: AppColors.gray300,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 6.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.ri_time_icon,
                                height: 24.h,
                                width: 24.w,
                              ),
                              SizedBox(width: 5.w),
                              CustomText(
                                text: "10-10-2025",
                                color: AppColors.gray300,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
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
