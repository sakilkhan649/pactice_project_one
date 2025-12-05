import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors/app_colors.dart';

class CustomSmallButton extends StatelessWidget {
  final String label;

  const CustomSmallButton({
    super.key,
    required this.label,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 26.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.tiya100,width: 1)
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: AppColors.tiya100,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
