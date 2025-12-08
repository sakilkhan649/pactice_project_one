import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';

class SimpleBox extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;

  const SimpleBox({
    super.key,
    this.height = 74,
    this.width = 84,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: child,
    );
  }
}
