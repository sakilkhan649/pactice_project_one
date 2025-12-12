import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/Custom_Button.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h),

              ///===============You can select multiple files===============
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.mingcute_file_icon,
                    height: 16.h,
                    width: 16.w,
                  ),
                  SizedBox(width: 5.w),
                  Column(
                    children: [
                      CustomText(
                        text: "You can select multiple files, but",
                        color: Colors.white,
                      ),
                      CustomText(
                        text: "at least one file must be chosen ",
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15.h),

              ///===============Select file===============
              Container(
                width: 278.w,
                padding: EdgeInsets.symmetric(horizontal: 84.w, vertical: 22.w),
                decoration: BoxDecoration(
                  color: AppColors.tiya300,
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppIcons.gellary_icon,
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                    CustomText(text: "Select file", color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 25.h),

              ///===============Only one video===============
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppIcons.video_play_icon,
                    height: 16.h,
                    width: 16.w,
                  ),
                  SizedBox(width: 5.w),
                  Column(
                    children: [
                      CustomText(
                        text: "Only one video can be uploaded,",
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: "         and the maximum file size is 500 ",
                    color: Colors.white,
                  ),
                  CustomText(text: "MB.", color: Colors.white),
                ],
              ),

              SizedBox(height: 15.h),

              ///===============drop video file===============
              Container(
                width: 278.w,
                padding: EdgeInsets.symmetric(horizontal: 44.w, vertical: 22.w),
                decoration: BoxDecoration(
                  color: AppColors.tiya300,
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppIcons.cloudArrowUp,
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                    CustomText(
                      text: "Drag & drop video file",
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.h),

              ///==============Upload Button========================
              Container(
                height: 48.h,
                child: CustomButton(
                  text: "Upload",
                  backgroundColor: AppColors.blue600,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 38.h),

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
                    child: CustomButton(text: "Next", onPressed: () {}),
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
