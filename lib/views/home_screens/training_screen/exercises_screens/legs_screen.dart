import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/views/home_screens/training_screen/widgets/Custom_container.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import '../../../../utils/app_icons/app_icons.dart';

class LegsScreen extends StatelessWidget {
  const LegsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 20.h),

          ///======================Box one===================================
          InkWell(
            onTap: () {
              Get.toNamed(Routes.vedioScreen);
            },
            child: CustomBox(
              height: 127.h,
              child: Row(
                children: [
                  CustomContainer(
                    borderColor: AppColors.black300,
                    height: 97.h,
                    width: 97.w,
                    backgroundColor: AppColors.black300,
                    child: Transform.rotate(
                      angle: 40 * 3.1416 / 180,
                      child: SvgPicture.asset(
                        AppIcons.hemaricon,
                        height: 50.h,
                        width: 50.w,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 3.h),
                      CustomText(
                        text: "BENCH PRESS",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 19.h),
                      Row(
                        children: [
                          Container(
                            height: 22.h,
                            width: 57.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.tiya200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              text: "Chest",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray300,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Transform.rotate(
                            angle: 40 * 3.1416 / 180,
                            child: SvgPicture.asset(
                              AppIcons.hemaricon,
                              height: 20.h,
                              width: 20.w,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          CustomText(
                            text: "Barbell",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                      ),

                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Container(
                            height: 22.h,
                            width: 57.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.black300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              text: "Chest",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 4.w),

                          Container(
                            height: 22.h,
                            width: 57.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.black300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              text: "Triceps",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(width: 4.w),

                          Container(
                            height: 22.h,
                            width: 74.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.black300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              text: "Shoulders",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),

          ///========================Box Two==========================
          InkWell(
            onTap: () {
              Get.toNamed(Routes.vedioScreen);
            },
            child: CustomBox(
              height: 127.h,
              child: Row(
                children: [
                  CustomContainer(
                    borderColor: AppColors.black300,
                    height: 97.h,
                    width: 97.w,
                    backgroundColor: AppColors.black300,
                    child: Transform.rotate(
                      angle: 40 * 3.1416 / 180,
                      child: SvgPicture.asset(
                        AppIcons.hemaricon,
                        height: 50.h,
                        width: 50.w,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 3.h),
                      CustomText(
                        text: "SHOUDER PRESS",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(height: 19.h),
                      Row(
                        children: [
                          Container(
                            height: 22.h,
                            width: 57.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.tiya200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              text: "Legs",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray300,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Transform.rotate(
                            angle: 40 * 3.1416 / 180,
                            child: SvgPicture.asset(
                              AppIcons.hemaricon,
                              height: 20.h,
                              width: 20.w,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          CustomText(
                            text: "Barbell",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ],
                      ),

                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Container(
                            height: 22.h,
                            width: 57.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.black300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              text: "Triceps",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(width: 8.w),

                          Container(
                            height: 22.h,
                            width: 74.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.black300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomText(
                              text: "Shoulders",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
