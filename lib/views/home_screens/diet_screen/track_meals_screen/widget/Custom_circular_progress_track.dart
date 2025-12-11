import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';

class CustomCircularProgressTrack extends StatelessWidget {
  final String title;
  final String value;
  final Color borderColor;
  final Color textColor;

  const CustomCircularProgressTrack({
    super.key,
    required this.title,
    required this.value,
    required this.borderColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Circle Value Box
        Container(
          width: 70.w,
          height: 70.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: borderColor, width: 1),
            color: AppColors.blue1000,
          ),
          alignment: Alignment.center,
          child: Text(
            value,
            style: TextStyle(
              color: textColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        SizedBox(height: 10.h),

        // Title
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
