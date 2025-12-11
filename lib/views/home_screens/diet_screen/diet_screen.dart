import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import '../../../core/routs/routs.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../../widgets/Custom_AppBar.dart';
import '../../../widgets/Custom_Text.dart';
import '../../../widgets/Custom_back_button.dart';
import '../training_screen/widgets/Custom_container.dart';
import 'widget/custom_progress.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Nutrition", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(22.w, 20.w, 22.w, 80.w),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.blue400,
                  border: Border.all(color: AppColors.gray600, width: 1),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today’s Macros",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "1850/ 2500 kcal",
                          style: TextStyle(
                            color: AppColors.tiya100,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    CustomProgress(
                      title: "Protein",
                      value: "145kg/ 180g",
                      progress: 145 / 180,
                      color: Colors.blueAccent,
                    ),

                    SizedBox(height: 16.h),

                    CustomProgress(
                      title: "Carbs",
                      value: "200g/ 240g",
                      progress: 200 / 240,
                      color: AppColors.green200,
                    ),

                    SizedBox(height: 16.h),

                    CustomProgress(
                      title: "Fett",
                      value: "14kg/ 180g",
                      progress: 100 / 180,
                      color: AppColors.orenge500,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.h),

              ///=======================Row vertical One ======================
              ///=======================Food Items======================
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.foodItemsScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.green100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.footicon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "Food Items",
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

                  ///====================NutritionPlanScreen=================
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.nutritionPlanScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.blue700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.trainingplanicon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "NUTRITION PLAN",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "Wekiy Overview",
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
              ///=======================TRACK MEALS======================
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.trackMealsScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.orenge300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.track_icon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "TRACK MEALS",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "To Record",
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
                        Get.toNamed(Routes.statisticsScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.orenge400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.statistics_icon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "STATISTICS",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "View History",
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

              ///=======================Row vertical Three ======================
              Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.supplementsScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.orenge300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.supplements_icon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "SUPPLEMENTS Plan",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: CustomContainer(
                      onTap: () {
                        Get.toNamed(Routes.pedsScreen);
                      },
                      height: 155.h,
                      width: 165.w,
                      borderColor: AppColors.orenge400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 18.h),
                          SvgPicture.asset(
                            AppIcons.peds_icon,
                            height: 45.h,
                            width: 45.w,
                          ),
                          SizedBox(height: 18.h),
                          CustomText(
                            text: "PEDs",
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 6.h),
                          CustomText(
                            text: "Plan",
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
