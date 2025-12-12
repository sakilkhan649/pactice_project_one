import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_icons/app_icons.dart';
import '../../../../../widgets/CustomBox_Container.dart';
import '../../../../../widgets/Custom_Text.dart';
import '../../../task_screens/checking_screen/widgets/custom_container.dart';

class WidgetContainer extends StatelessWidget {
  final String titleOne;
  final String titleTwo;
  final String titleThree;
  final String titleFour;
  final String subtitle;

  WidgetContainer({super.key, required this.titleOne, required this.subtitle, required this.titleTwo, required this.titleThree, required this.titleFour});

  @override
  Widget build(BuildContext context) {
    return
    ///===========================Wdh One==============================
    CustomBox(
      height: 80,
      borderColor: AppColors.blue400,
      child: Row(
        children: [
          Expanded(
            child: CustomBox(

              borderRadius: 50,
              borderColor: AppColors.tiya100,
              color: AppColors.tiya200,
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.hemaricon,
                    height: 16.h,
                    width: 16.w,
                    colorFilter: ColorFilter.mode(
                      AppColors.tiya100,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: titleOne,
                        fontSize: 8,
                        color: AppColors.tiya100,
                      ),
                      CustomText(
                        text: subtitle,
                        fontSize: 8,
                        color: AppColors.tiya100,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(width: 5.w),

          Expanded(
            child: CustomBox(

              borderColor: AppColors.tiya100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: titleTwo,
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5.w),

          Expanded(
            child: CustomBox(
              borderColor: AppColors.tiya100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text:titleThree,
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5.w),

          Expanded(
            child: CustomBox(
              borderColor: AppColors.tiya100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: titleFour,
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5.w),
          SvgPicture.asset(AppIcons.tickIicon, height: 20.h, width: 20.w),
        ],
      ),
    );
  }
}
