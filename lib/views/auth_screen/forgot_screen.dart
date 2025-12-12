import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/utils/app_icons/app_icons.dart';
import 'package:newproject/widgets/Custom_AppBar.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import 'package:newproject/widgets/Custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_const/app_const.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Textfeld.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});

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
          title: "Forgot Password",
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
                    text: "Forgot Password",
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: "Enter the email or phone your account and",
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: "we’ll send a code to reset your password",
                  ),
                ),
                SizedBox(height: 24.h),
                CustomText(text: "Email", color: Colors.white),
                Customtextfield(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  )
                  ),
                  controller: emailController,
                  hintText: "enter your email",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Email";
                    }
                    if (!AppString.emailRegexp.hasMatch(value)) {
                      return "Invalid Email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 32.h),
                CustomButton(
                  text: "Send",
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Get.toNamed(Routes.otpScreen);
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
