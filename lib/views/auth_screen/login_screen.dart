import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/core/routs/routs.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/utils/app_icons/app_icons.dart';
import 'package:newproject/widgets/Custom_AppBar.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import 'package:newproject/widgets/Custom_Text_Button.dart';
import 'package:newproject/widgets/Custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_const/app_const.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Textfeld.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
        appBar: CustomAppBar(title: "Log In", leading: CustomBackButton()),
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
                    text: "Victory Belongs to the Lions",
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: "Log in to continue your journey together.",
                  ),
                ),
                SizedBox(height: 24.h),
                CustomText(text: "Email", color: Colors.white),
                Customtextfield(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      AppIcons.emailicon,
                      height: 4.h,
                      width: 4.w,
                    ),
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
                SizedBox(height: 10.h),
                CustomText(text: "Password", color: Colors.white),

                Obx(
                  () => Customtextfield(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        AppIcons.passwordicon,
                        height: 4.h,
                        width: 4.w,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisible.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        isPasswordVisible.value = !isPasswordVisible.value;
                      },
                    ),
                    controller: passwordController,
                    hintText: "enter your Password",
                    obscureText: !isPasswordVisible.value,
                    textInputType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your Password";
                      }
                      if (!AppString.passRegexp.hasMatch(value)) {
                        return "Invalid password";
                      }
                      return null;
                    },
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(
                    buttonName: "Forgot Password?",
                    onPressed: () {
                      Get.toNamed(Routes.forgotScreen);
                    },
                    color: AppColors.blue300,
                  ),
                ),

                SizedBox(height: 20.h),

                CustomButton(
                  text: "Log in",
                  onPressed: () {
                    Get.toNamed(Routes.homeScreen);
                    //if (_formkey.currentState!.validate()) {}
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
