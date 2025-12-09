import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/views/home_screens/training_screen/historie_screen/widget/Custom_texth.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';

class HistorieScreen extends StatelessWidget {
  const HistorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Training History",
        leading: CustomBackButton(),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(22.w, 30.w, 23.w, 209.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBox(
              onTap: (){
                Get.toNamed(Routes.pullFullbodyScreen);
              },
              height: 280.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTexth(
                        text: "November",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomTexth(
                        text: "9 Workouts",
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  CustomTexth(
                    text: "Pull Fullbody",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 4.h),
                  CustomTexth(
                    text: "Tuesday, 18 November 2025 at 16:52",
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 4.h),
                  CustomTexth(
                    text: "Sets / Bestes Set → Best Set",
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 10.h),
                  CustomTexth(
                    text: "2 × Seated Row(Machine) → Best:68kg×8@10[F]",
                  ),
                  SizedBox(height: 10.h),
                  CustomTexth(
                    text: "2 × Wide Row Machine → Best: 65 kg × 7 @ 10 [F]",
                  ),
                  SizedBox(height: 10.h),
                  CustomTexth(
                    text: "2 × Wide Row Machine → Best: 65 kg × 7 @ 10 [F]",
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        AppIcons.ri_time_icon,
                        height: 24.h,
                        width: 24.w,
                      ),
                      CustomTexth(
                        text: "1 h 31 m",
                        color: AppColors.gray300,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      SvgPicture.asset(
                        AppIcons.wdigthicon,
                        height: 18.h,
                        width: 18.w,
                      ),

                      CustomTexth(
                        text: "5000(kg)",
                        color: AppColors.gray300,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      SvgPicture.asset(
                        AppIcons.capicon,
                        height: 20.h,
                        width: 20.w,
                      ),

                      CustomTexth(
                        text: "0 PRs",
                        color: AppColors.gray300,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
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
