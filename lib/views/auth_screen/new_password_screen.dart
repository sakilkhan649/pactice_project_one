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

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

  final _formkey = GlobalKey<FormState>();
  final isPasswordVisibleone = false.obs;
  final isPasswordVisibletwo = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: CustomAppBar(
          title: "Create New Password",
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
                    text: "Create New Password",
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: "Your new password must be different",
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomText(text: "from previous passwords."),
                ),
                SizedBox(height: 24.h),
                CustomText(text: "New Password", color: Colors.white),
                SizedBox(height: 6.h),
                Obx(
                  () => Customtextfield(
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisibleone.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        isPasswordVisibleone.value =
                            !isPasswordVisibleone.value;
                      },
                    ),
                    controller: passwordController,
                    hintText: "************",
                    obscureText: !isPasswordVisibleone.value,
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
                SizedBox(height: 10.h),
                CustomText(text: "Confirm Password", color: Colors.white),
                SizedBox(height: 6.h),
                Obx(
                  () => Customtextfield(
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisibletwo.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        isPasswordVisibletwo.value =
                            !isPasswordVisibletwo.value;
                      },
                    ),
                    controller: emailController,
                    hintText: "************",
                    obscureText: !isPasswordVisibletwo.value,
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

                SizedBox(height: 20.h),

                CustomButton(
                  text: "Confirm",
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Get.toNamed(Routes.successScreen);
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
