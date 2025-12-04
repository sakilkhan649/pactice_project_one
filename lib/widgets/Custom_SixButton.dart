import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors/app_colors.dart';

class CustomSmallButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const CustomSmallButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 26.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.w),
      ),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.blue400,
          foregroundColor: AppColors.tiya100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
            side: BorderSide(
              color: AppColors.tiya100,
              width: 1.w,
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 1.w,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
