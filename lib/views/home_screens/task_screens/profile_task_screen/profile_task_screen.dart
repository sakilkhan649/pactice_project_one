import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/Custom_Button.dart';
import '../../../../widgets/Custom_Text.dart';

class ProfileTaskScreen extends StatelessWidget {
  const ProfileTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.wdigthicon,
                  height: 16.h,
                  width: 16.w,
                ),
                SizedBox(width: 13.w),
                CustomText(
                  text: "Basic Data",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ],
            ),
            SizedBox(height: 14.h),
            CustomBox(
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.capicon, height: 16.h, width: 16.w),
                  SizedBox(width: 9.w),
                  CustomText(
                    text: "competition class",
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  SizedBox(width: 9.w),
                  CustomText(
                    text: "Classic Physique",
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ],
              ),
            ),

            SizedBox(height: 12.h),

            ///==============Current Weight (kg)========================
            CustomBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Current Weight (kg)",
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "80.2 (kg)",
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      Container(
                        height: 27.h,
                        width: 129.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.tiya200,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: AppColors.blue200,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          "∅ Check-in since last",
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.tiya100,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 12.h),

            ///==============Average Weight in %========================
            CustomBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Average Weight in %",
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "80.2 (%)",
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      Container(
                        height: 27.h,
                        width: 129.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.tiya200,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: AppColors.blue200,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          "∅ Check-in since last",
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.tiya100,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 110.h),

            ///==============Submit Button========================
            CustomButton(text: "Next", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
