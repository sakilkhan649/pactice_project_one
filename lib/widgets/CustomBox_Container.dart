import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';

class CustomBox extends StatelessWidget {
  final Widget? child;
  final Color color;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;

  const CustomBox({
    super.key,
    this.child,
    this.color = AppColors.blue400,
    this.height,
    this.width,
    this.padding,
    this.borderRadius = 8,
    this.borderColor = Colors.white12,
    this.borderWidth = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 74.h,
      width: width ?? double.infinity,
      padding: padding ?? EdgeInsets.fromLTRB(13.w, 7.w, 16.w, 7.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius.r),
        border: Border.all(
          color: borderColor,
          width: borderWidth.w,
        ),
      ),
      child: child,
    );
  }
}
