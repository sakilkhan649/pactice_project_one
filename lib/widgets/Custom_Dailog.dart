import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_icons/app_icons.dart';
import 'CustomBox_Container.dart';
import 'Custom_Button.dart';
import 'Custom_Text.dart';
import 'Custom_Textfeld.dart';

class Customdialog extends StatelessWidget {
  Customdialog({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController weigthContoller = TextEditingController();
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: CustomBox(
        height: 370.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset(
                      AppIcons.crosx_icon,
                      height: 18.h,
                      width: 18.w,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Meal Name", color: Colors.white),
                        SizedBox(height: 5.h),
                        Container(
                          height: 32.h,
                          width: 130.w,
                          child: Customtextfield(
                            controller: weigthContoller,
                            hintText: "Type.. ",
                            obscureText: false,
                            textInputType: TextInputType.text,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Food Name", color: Colors.white),
                        SizedBox(height: 5.h),
                        Container(
                          height: 32.h,
                          width: 130.w,
                          child: Customtextfield(
                            controller: weigthContoller,
                            hintText: "Type.. ",
                            obscureText: false,
                            textInputType: TextInputType.text,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Amount", color: Colors.white),
                        SizedBox(height: 5.h),
                        Container(
                          height: 32.h,
                          width: 130.w,
                          child: Customtextfield(
                            controller: weigthContoller,
                            hintText: "Type.. ",
                            obscureText: false,
                            textInputType: TextInputType.text,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),

                ///==============Submit Button========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48.h,
                      width: 130.w,
                      child: CustomButton(
                        text: "Cancel",
                        backgroundColor: AppColors.blue600,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                    Container(
                      height: 48.h,
                      width: 130.w,
                      child: CustomButton(text: "Add Meal", onPressed: () {}),
                    ),
                    SizedBox(height: 170.h),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
