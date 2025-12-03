import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/widgets/Custom_AppBar.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import 'package:newproject/widgets/Custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_const/app_const.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Textfeld.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final _formkey = GlobalKey<FormState>();
  final isPasswordVisible = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: CustomAppBar(
          title: "Check your email",
          leading: CustomBackButton(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(25.w, 0.w, 25.w, 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: "Check your email",
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: "we send a verification code Please ",
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(text: "Check your e-mail"),
                ),
                SizedBox(height: 24.h),
                CustomText(text: "OTP", color: Colors.white),
                Customtextfield(
                  controller: emailController,
                  hintText: "457896",
                  obscureText: false,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Otp";
                    }
                    if (value.length <= 6) {
                      return 'Enter 6 digit OTP';
                    }
                    if (!AppString.otpRegexp.hasMatch(value)) {
                      return "Invalid Otp";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32.h),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(text: "This code will expire in 01:56"),
                ),
                SizedBox(height: 16.h),

                CustomButton(
                  text: "Send",
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Get.toNamed(Routes.newPasswordScreen);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
