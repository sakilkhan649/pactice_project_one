import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';

class Customtextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextInputType textInputType;
  final InputBorder? inputBorder;
  final String? Function(String?)? validator;
  final TextStyle? inputTextStyle;

  Customtextfield({
    super.key,
    this.inputTextStyle,
    this.inputBorder,
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    required this.obscureText,
    required this.textInputType,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(minHeight: 49.h),
      child: TextFormField(
        style: inputTextStyle ?? TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        validator: validator,
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: AppColors.blue200,
          hintStyle: TextStyle(color: Colors.white70),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white12),
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white12),
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
          ),
          errorStyle: TextStyle(
            color: Colors.red,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}