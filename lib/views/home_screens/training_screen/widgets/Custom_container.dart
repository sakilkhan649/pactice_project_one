import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double verticalPadding;
  final double horizontalPadding;
  final Color borderColor;
  final Color? backgroundColor;
  final Widget? child;
  final VoidCallback? onTap;

  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.verticalPadding = 14,
    this.horizontalPadding = 11,
    required this.borderColor,
    this.backgroundColor,
    this.child,
    this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height?.h,
        width: width?.w,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding.h,
          horizontal: horizontalPadding.w,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.black200,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1,
            color: borderColor,
          ),
        ),
        child: child,
      ),
    );
  }
}
