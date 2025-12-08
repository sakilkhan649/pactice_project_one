import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:newproject/views/home_screens/task_screens/questions_screen/Controller/questions_controller.dart';
import 'package:newproject/views/home_screens/task_screens/questions_screen/Controller/redio_controller.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import 'package:newproject/widgets/Custom_Radio_Button.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import 'package:newproject/widgets/Custom_Textfeld.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../widgets/Custom_Button.dart';
import '../../../../widgets/Custom_slider.dart';
import '../../daily_screen/controller/daily_screen_controller.dart';

class QuestionsScreen extends StatelessWidget {
  QuestionsScreen({super.key});

  TextEditingController qutestionControlle = TextEditingController();
  TextEditingController nutritionControlle = TextEditingController();
  TextEditingController dailtNotesControlle = TextEditingController();

  final QuestionsController _controller = Get.put(QuestionsController());
  final RedioController _rediocontroller = Get.put(RedioController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Q1 . What are you proud of?",
                color: Colors.white,
              ),
              SizedBox(height: 10.h),
              Container(
                height: 40.h,
                alignment: Alignment.center,
                child: Customtextfield(
                  controller: qutestionControlle,
                  hintText: "Answer :",
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),
              ),
              SizedBox(height: 12.h),
              CustomText(
                text: "Calories per default quantity",
                color: Colors.white,
              ),
              SizedBox(height: 10.h),
              Container(
                height: 40.h,
                alignment: Alignment.center,
                child: Customtextfield(
                  controller: qutestionControlle,
                  hintText: "Type..",
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),
              ),
              SizedBox(height: 12.h),

              ///==============Well-Being ========================
              CustomBox(
                height: 340.h,
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
                      value: _controller.sliderOne,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Two ========================
                    CustomSlider(
                      label: "Stress level(1-10)",
                      value: _controller.sliderTwo,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Three ========================
                    CustomSlider(
                      label: "Mood level(1-10)",
                      value: _controller.sliderThree,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Four ========================
                    CustomSlider(
                      label: "Sleep quality(1-10)",
                      value: _controller.sliderFour,
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(height: 12.h),

              ///==============Nutrition ========================
              CustomBox(
                height: 292.h,
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
                      value: _controller.sliderFive,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Six ========================
                    CustomSlider(
                      label: "Digestion (1-10)",
                      value: _controller.sliderSix,
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
                height: 443.h,
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
                      value: _controller.sliderSeven,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider Eight ========================
                    CustomSlider(
                      label: "Pumps (1-10)",
                      value: _controller.sliderEight,
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
                            groupValue: _rediocontroller.isSickOne.value,
                            onCheng: (val) {
                              _rediocontroller.isSickOne.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "No",
                            value: false,
                            groupValue: _rediocontroller.isSickOne.value,
                            onCheng: (val) {
                              _rediocontroller.isSickOne.value = val;
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
                            groupValue: _rediocontroller.isSickTwo.value,
                            onCheng: (val) {
                              _rediocontroller.isSickTwo.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "No",
                            value: false,
                            groupValue: _rediocontroller.isSickTwo.value,
                            onCheng: (val) {
                              _rediocontroller.isSickTwo.value = val;
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
                height: 100.h,
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

              ///==============Next Button========================
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
                    child: CustomButton(text: "Next", onPressed: () {}),
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
