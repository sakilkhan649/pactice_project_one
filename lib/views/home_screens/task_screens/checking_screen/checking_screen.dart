import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_images/app_images.dart';
import 'package:newproject/views/home_screens/task_screens/checking_screen/controller/check_controller.dart';
import 'package:newproject/views/home_screens/task_screens/checking_screen/controller/redio_controller.dart';
import 'package:newproject/views/home_screens/task_screens/checking_screen/controller/slider_controller.dart';
import 'package:newproject/views/home_screens/task_screens/checking_screen/widgets/custom_container.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/CustomBox_Container.dart';
import '../../../../widgets/Custom_Button.dart';
import '../../../../widgets/Custom_Radio_Button.dart';
import '../../../../widgets/Custom_Text.dart';
import '../../../../widgets/Custom_Textfeld.dart';
import '../../../../widgets/Custom_slider.dart';

class Checkingscreen extends StatelessWidget {
  Checkingscreen({super.key});
  final _rediocontroller = Get.put(CheckController());
  final _checkRedioController = Get.put(CheckRedioController());
  final _sliderController = Get.put(CheckSliderController());

  TextEditingController nutritionControlle = TextEditingController();
  TextEditingController dailtNotesControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              ///==============Weight Class========================
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          AppIcons.capicon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 10.w),
                        CustomText(
                          text: "Weight Class",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        SizedBox(width: 180.w),
                        SvgPicture.asset(
                          AppIcons.exclametoryicon,
                          height: 12.h,
                          width: 12.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "80.2 (kg)",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                        Container(
                          height: 27.h,
                          width: 129.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.tiya200,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: AppColors.blue200,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            "∅ Check-in since last",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.tiya100,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              ///==============Average Weight in %========================
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Average Weight in %",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "80.2 (%)",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                        Container(
                          height: 27.h,
                          width: 129.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.tiya200,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: AppColors.blue200,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            "∅ Check-in since last",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.tiya100,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.h),

              ///==============Basic Data========================
              Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.wdigthicon,
                    height: 16.h,
                    width: 16.w,
                  ),
                  SizedBox(width: 13.w),
                  CustomText(
                    text: "Basic Data",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ],
              ),
              SizedBox(height: 9.h),

              ///==============Pictures uploaded========================
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Pictures uploaded?",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                    ///==================Redio Three==========================
                    Obx(
                      () => Column(
                        children: [
                          CustomRadioButton(
                            text: "Yes",
                            value: true,
                            groupValue: _rediocontroller.isSickThree.value,
                            onCheng: (val) {
                              _rediocontroller.isSickThree.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "No",
                            value: false,
                            groupValue: _rediocontroller.isSickThree.value,
                            onCheng: (val) {
                              _rediocontroller.isSickThree.value = val;
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 22.h),

                    ///==============Images===============================
                    Row(
                      children: [
                        Expanded(
                          child: SimpleBox(
                            child: Image.asset(AppImages.rectangle_one),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: SimpleBox(
                            child: Image.asset(AppImages.rectangle_two),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: SimpleBox(
                            child: Image.asset(AppImages.rectangle_three),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Expanded(
                          child: SimpleBox(
                            child: Image.asset(AppImages.rectangle_four),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 22.h),
                    CustomText(
                      text: "Video uploaded?",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                    ///==================Redio Four==========================
                    Obx(
                      () => Column(
                        children: [
                          CustomRadioButton(
                            text: "Yes",
                            value: true,
                            groupValue: _rediocontroller.isSickFour.value,
                            onCheng: (val) {
                              _rediocontroller.isSickFour.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "No",
                            value: false,
                            groupValue: _rediocontroller.isSickFour.value,
                            onCheng: (val) {
                              _rediocontroller.isSickFour.value = val;
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 129.h,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Image.asset(AppImages.rectangle_five),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              ///==============Well-Being ========================
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Well-Being",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider One ========================
                    CustomSlider(
                      label: "Energy Level(1-10)",
                      value: _sliderController.checkSliderOne,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Two ========================
                    CustomSlider(
                      label: "Stress level(1-10)",
                      value: _sliderController.checkSliderTwo,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Three ========================
                    CustomSlider(
                      label: "Mood level(1-10)",
                      value: _sliderController.checkSliderThree,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Four ========================
                    CustomSlider(
                      label: "Sleep quality(1-10)",
                      value: _sliderController.checkSliderFour,
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(height: 12.h),

              ///==============Nutrition ========================
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Nutrition",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Five ========================
                    CustomSlider(
                      label: "Diet Level (1-10)",
                      value: _sliderController.checkSliderFive,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Six ========================
                    CustomSlider(
                      label: "Digestion (1-10)",
                      value: _sliderController.checkSliderSix,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "challenge Diet",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 8.h),
                    Customtextfield(
                      controller: nutritionControlle,
                      hintText: "Type..",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),

              ///==============Training ========================
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Training",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Seven ========================
                    CustomSlider(
                      label: "Feel Strength (1-10)",
                      value: _sliderController.checkSliderSeven,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Eight ========================
                    CustomSlider(
                      label: "Pumps (1-10)",
                      value: _sliderController.checkSliderEight,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "Training Completed?",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                    ///==================Redio One==========================
                    Obx(
                      () => Column(
                        children: [
                          CustomRadioButton(
                            text: "Yes",
                            value: true,
                            groupValue: _checkRedioController.isCheckOne.value,
                            onCheng: (val) {
                              _checkRedioController.isCheckOne.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "No",
                            value: false,
                            groupValue: _checkRedioController.isCheckOne.value,
                            onCheng: (val) {
                              _checkRedioController.isCheckOne.value = val;
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "Cardio Completed?",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                    ///==================Redio Two==========================
                    Obx(
                      () => Column(
                        children: [
                          CustomRadioButton(
                            text: "Yes",
                            value: true,
                            groupValue: _checkRedioController.isCheckTwo.value,
                            onCheng: (val) {
                              _checkRedioController.isCheckTwo.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "No",
                            value: false,
                            groupValue: _checkRedioController.isCheckTwo.value,
                            onCheng: (val) {
                              _checkRedioController.isCheckTwo.value = val;
                            },
                          ),
                        ],
                      ),
                    ),

                    CustomText(
                      text: "Feedback training",
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 8.h),
                    Customtextfield(
                      controller: nutritionControlle,
                      hintText: "Type..",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),

              ///==============Dailt Notes========================
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Dailt Notes",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    SizedBox(height: 8.h),
                    Customtextfield(
                      controller: dailtNotesControlle,
                      hintText: "Type....",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 39.h),

              ///==============Submit Button========================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48.h,
                    width: 160.w,
                    child: CustomButton(
                      text: "Back",
                      backgroundColor: AppColors.blue600,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 48.h,
                    width: 160.w,
                    child: CustomButton(text: "Submit", onPressed: () {}),
                  ),
                  SizedBox(height: 170.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
