import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_icons/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  CustomBackButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: SvgPicture.asset(AppIcons.back_icon, height: 35.h, width: 35.w),
            ),
          ],
        ),
      ),
    );
  }
}
