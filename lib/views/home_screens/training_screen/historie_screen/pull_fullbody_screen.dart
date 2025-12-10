import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/views/home_screens/training_screen/historie_screen/widget/Custom_texth.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';

import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';

class PullFullbodyScreen extends StatelessWidget {
  const PullFullbodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Pull Fullbody", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.w, 40.w, 25.w, 209.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTexth(
                text: "Tuesday, 18 November 2025 at 16:52",
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              CustomTexth(
                text: "Warm up the rotator cuffs and hips",
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 15.h),

              CustomBox(
                height: 477.h,
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Seated Row (Machine)",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "1  Rm",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "36 kg x 6",
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(text: "42", fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "50 kg x 6",
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(text: "50", fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Wide Row (Machine)",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "1  Rm",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "20 kg x 6",
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(text: "23", fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "40 kg x 2",
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(text: "41", fontWeight: FontWeight.w500),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
