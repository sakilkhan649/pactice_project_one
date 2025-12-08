import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_images/app_images.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import '../../../../../widgets/Custom_AppBar.dart';
import '../../../../../widgets/Custom_back_button.dart';

class VedioScreen extends StatelessWidget {
  const VedioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(24.w, 37.w, 24.w, 209.w),
        child: Column(
          children: [
            Container(
              height: 219.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AppImages.shouderimaig,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 35.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 22.h),
            CustomText(
              text:
                  "Focuses on shoulder strength and stability. Improves pressing power and reduces injury risk.",
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
