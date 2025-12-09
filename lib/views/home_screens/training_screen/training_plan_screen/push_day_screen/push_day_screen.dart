import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/views/home_screens/task_screens/checking_screen/widgets/custom_container.dart';
import 'package:newproject/views/home_screens/training_screen/training_plan_screen/push_day_screen/widget.dart';
import 'package:newproject/views/home_screens/training_screen/widgets/Custom_container.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import 'package:newproject/widgets/Custom_Textfeld.dart';

import '../../../../../utils/app_icons/app_icons.dart';
import '../../../../../widgets/Custom_AppBar.dart';
import '../../../../../widgets/Custom_Button.dart';
import '../../../../../widgets/Custom_back_button.dart';

class PushDayScreen extends StatelessWidget {
  PushDayScreen({super.key});

  TextEditingController typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Push Day – Chest & Shoulders",
        leading: CustomBackButton(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(24.w, 10.w, 24.w, 60.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomText(
                  text: "Start!",
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 6.h),

              ///===========================Hours==============================
              CustomContainer(
                height: 70.h,
                width: 276.w,
                borderColor: AppColors.tiya200,
                backgroundColor: AppColors.blue200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: "1",
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomText(
                          text: "hours",
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),

                    SizedBox(width: 10.w),

                    Container(height: 50, width: 2, color: Colors.white),
                    SizedBox(width: 10.w),
                    Column(
                      children: [
                        CustomText(
                          text: "10",
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomText(
                          text: "Minutes",
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),

                    SizedBox(width: 10.w),
                    Container(height: 50, width: 2, color: Colors.white),
                    SizedBox(width: 10.w),
                    Column(
                      children: [
                        CustomText(
                          text: "12",
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomText(
                          text: "seconds",
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),

              ///===========================Play==============================
              Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: AppColors.black200,
                  border: Border.all(color: AppColors.green200),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.play_arrow, color: Colors.white, size: 35.sp),
              ),
              SizedBox(height: 10.h),

              ///===========================Bench==============================
              CustomContainer(
                height: 108.h,
                borderColor: AppColors.green200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Bench Press",
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          text: "To Exchange",
                          color: AppColors.orenge400,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 40.h,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.blue800,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AppIcons.hemaricon,
                              height: 20.h,
                              width: 20.w,
                            ),
                            SizedBox(width: 10.w),
                            CustomText(
                              text: "4 Sets",
                              color: AppColors.blue700,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.h),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: "Sets",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.h),

              ///===========================Wdh One==============================
              WidgetContainer(
                titleOne: "8-10",
                subtitle: "Wdh",
                titleTwo: "Geight 62.5(Kg)",
                titleThree: "Reps(8)",
                titleFour: "RIR(2)",
              ),
              SizedBox(height: 12.h),
              WidgetContainer(
                titleOne: "8-10",
                subtitle: "Wdh",
                titleTwo: "Geight 62.5(Kg)",
                titleThree: "Reps(8)",
                titleFour: "RIR(2)",
              ),
              SizedBox(height: 12.h),
              WidgetContainer(
                titleOne: "8-10",
                subtitle: "Wdh",
                titleTwo: "Geight 62.5(Kg)",
                titleThree: "Reps(8)",
                titleFour: "RIR(2)",
              ),
              SizedBox(height: 12.h),
              WidgetContainer(
                titleOne: "8-10",
                subtitle: "Wdh",
                titleTwo: "Geight 62.5(Kg)",
                titleThree: "Reps(8)",
                titleFour: "RIR(2)",
              ),
              SizedBox(height: 19.h),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: "Notes",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5.h),
              Customtextfield(
                controller: typeController,
                hintText: "Type....",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 38.h),
              CustomContainer(
                height: 86.h,
                width: double.maxFinite,
                borderColor: AppColors.black200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Coach Notes",
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    SizedBox(height: 5.h),
                    CustomText(
                      text:
                          "Lorem ipsum dolor sit amet consectetur. Ipsum tortor nunc faucibus non interdum non mi. ",
                      fontSize: 12,
                    ),
                  ],
                ),
              ),

              ///==============Next Button========================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48.h,
                    width: 160.w,
                    child: CustomButton(
                      text: "Back",
                      backgroundColor: AppColors.blue600,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 48.h,
                    width: 160.w,
                    child: CustomButton(text: "Complete", onPressed: () {}),
                  ),
                  SizedBox(height: 170.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
