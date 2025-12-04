import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/utils/app_icons/app_icons.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import 'package:newproject/widgets/Custom_AppBar.dart';
import 'package:newproject/widgets/Custom_SixButton.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import 'package:newproject/widgets/Custom_Textfeld.dart';
import 'package:newproject/widgets/Custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailyScreen extends StatelessWidget {
  DailyScreen({super.key});

  final weigthContoller = TextEditingController();
  final sleepContoller = TextEditingController();

  RxInt countone = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Daily Tracking",
        leading: CustomBackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.home_talingicon,
              height: 24.h,
              width: 24.h,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(17.w, 43.w, 31.w, 9.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///================Date===============================
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Date:",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                      SizedBox(height: 8.h),
                      CustomText(
                        text: "18.09.25",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.tiya200,
                      foregroundColor: AppColors.tiya100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.r),
                        side: BorderSide(color: Colors.grey, width: 1.w),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 1.5.w,
                      ),
                    ),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h),

            ///================Weight===============================
            CustomBox(
              height: 122.h,
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
                        text: "Weight",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 14.h),
                  Customtextfield(
                    controller: weigthContoller,
                    hintText: "65.2 (kg)",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h),

            ///================Sleep===============================
            CustomBox(
              height: 169.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppIcons.sleepicon,
                        height: 16.h,
                        width: 16.w,
                      ),
                      SizedBox(width: 13.w),
                      CustomText(
                        text: "Sleep",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 14.h),
                  Customtextfield(
                    controller: weigthContoller,
                    hintText: "08 : 45 (Minutes)",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Sleep quality(1-10)",
                        color: Colors.white,
                      ),
                      CustomSmallButton(label: "6", onTap: () {}),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 12.h,
                    width: double.infinity,
                    child: Obx(() {
                      return Slider(
                        value: countone.value.toDouble(),
                        min: 0,
                        max: 100,
                        activeColor: AppColors.tiya100,
                        inactiveColor: Colors.white12,
                        onChanged: (value) {
                          countone.value = value.round();
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            ///================Sick===============================
            CustomBox(
              height: 105.h,
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.sickicon,
                    height: 16.h,
                    width: 16.w,
                  ),
                  SizedBox(width: 13.w),
                  CustomText(
                    text: "Sick",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
