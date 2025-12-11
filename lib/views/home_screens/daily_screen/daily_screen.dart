import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/utils/app_icons/app_icons.dart';
import 'package:newproject/views/home_screens/daily_screen/controller/dopdown_controller.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import 'package:newproject/widgets/Custom_AppBar.dart';
import 'package:newproject/widgets/Custom_Radio_Button.dart';
import 'package:newproject/widgets/Custom_SixButton.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import 'package:newproject/widgets/Custom_Textfeld.dart';
import 'package:newproject/widgets/Custom_back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/widgets/Custom_check_box.dart';
import 'package:newproject/widgets/Custom_slider.dart';
import '../../../widgets/Custom_Button.dart';
import '../../../widgets/Custom_dopdown_button.dart';
import 'controller/daily_screen_controller.dart';

class DailyScreen extends StatelessWidget {
  DailyScreen({super.key});

  final DailyScreenController _controller = Get.put(DailyScreenController());
  final DopdownController _dopdownController = Get.put(DopdownController());

  final weigthContoller = TextEditingController();
  final sleepContoller = TextEditingController();

  RxBool yes = false.obs;
  RxBool no = false.obs;

  RxBool isCheckedOne = false.obs;
  RxBool isCheckedTwo = false.obs;
  RxBool isCheckedThree = false.obs;
  RxBool isCheckedFour = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Daily Tracking",
        leading: CustomBackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.home_talingicon,
              height: 18.h,
              width: 18.h,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(17.w, 43.w, 31.w, 9.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///================Date===============================
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Date:",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        SizedBox(height: 8.h),
                        CustomText(
                          text: "18.09.25",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    Container(
                      height: 27.h,
                      width: 74.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.tiya200,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.tiya100,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.h),

              ///================Weight===============================
              CustomBox(
                height: 122.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.wdigthicon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Weight",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "65.2 (kg)",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.h),

              ///================Sleep===============================
              CustomBox(
                height: 200.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.sleepicon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Sleep",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "08 : 45 (Minutes)",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 15.h),

                    ///==============Slider One ========================
                    CustomSlider(
                      label: "Sleep quality(1-10)",
                      value: _controller.countOne,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),

              ///================Sick===============================
              CustomBox(
                height: 115.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.sickicon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Sick",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 9.h),
                    Obx(
                      () => Column(
                        children: [
                          CustomRadioButton(
                            text: "Yes",
                            value: true,
                            groupValue: _controller.isSick.value,
                            onCheng: (val) {
                              _controller.isSick.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "No",
                            value: false,
                            groupValue: _controller.isSick.value,
                            onCheng: (val) {
                              _controller.isSick.value = val;
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 4.h),
                  ],
                ),
              ),
              SizedBox(height: 11.h),

              ///================Water===============================
              CustomBox(
                height: 139.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.dopicon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Water",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "1.2 (lit)",
                      obscureText: false,
                      textInputType: TextInputType.number,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "At least 2.5 liters recommended.",
                          color: AppColors.tiya100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 11.h),

              ///================energy &Well-being===============================
              CustomBox(
                height: 500.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.homeicon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "energy &Well-being",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.h),

                    ///==============Slider two ========================
                    CustomSlider(
                      label: "Sleep quality(1-10)",
                      value: _controller.countTwo,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider three ========================
                    CustomSlider(
                      label: "Sleep quality(1-10)",
                      value: _controller.countThree,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Slider four ========================
                    CustomSlider(
                      label: "Muscel - Soreness(1-10)",
                      value: _controller.countFour,
                    ),

                    SizedBox(height: 10.h),

                    ///==============Slider five ========================
                    CustomSlider(
                      label: "Mood(1-10)",
                      value: _controller.countFive,
                    ),

                    SizedBox(height: 10.h),

                    ///==============Slider Six ========================
                    CustomSlider(
                      label: "Motivation(1-10)",
                      value: _controller.countSix,
                    ),

                    SizedBox(height: 18.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: "Body Temperature",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "Type",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              ///==============Training ========================
              CustomBox(
                height: 500.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.traningicon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Training",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),

                    CustomBox(
                      height: 40.h,
                      borderColor: Colors.white12,
                      child: CustomDropdown<String>(
                        hint: "Training Completed?",
                        value: _dopdownController.selectedTraining,
                        items: _dopdownController.training,
                        getLabel: (city) => city,
                        dropdownColor: Colors.green,
                        onChanged: (value) {
                          _dopdownController.selectedTraining.value = value;
                        },
                      ),
                    ),

                    SizedBox(height: 14.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "Training Plan?",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                    ),

                    ///========================Check Box======================================
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomCheckbox(isChecked: isCheckedOne),
                                CustomText(
                                  text: "Placeholder",
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomCheckbox(isChecked: isCheckedTwo),
                                CustomText(
                                  text: "Leg Day Advanced",
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                CustomCheckbox(isChecked: isCheckedThree),
                                CustomText(
                                  text: "Push Fullbody",
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomCheckbox(isChecked: isCheckedFour),
                                CustomText(
                                  text: "Training plan 1",
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 18.h),

                    ///========================Cardio Completed?=====================================
                    CustomBox(
                      height: 40.h,
                      borderColor: Colors.white12,
                      child: CustomDropdown<String>(
                        hint: "Cardio Completed?",
                        value: _dopdownController.selectedTraining,
                        items: _dopdownController.training,
                        getLabel: (city) => city,
                        dropdownColor: Colors.green,
                        onChanged: (value) {
                          _dopdownController.selectedTraining.value = value;
                        },
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "Cardio Type ?",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                    ),
                    SizedBox(height: 9.h),

                    ///=========================Radio Button===================
                    Obx(
                      () => Column(
                        children: [
                          CustomRadioButton(
                            text: "Walking",
                            value: true,
                            groupValue: _controller.isSick.value,
                            onCheng: (val) {
                              _controller.isSick.value = val;
                            },
                          ),

                          CustomRadioButton(
                            text: "Cycling",
                            value: false,
                            groupValue: _controller.isSick.value,
                            onCheng: (val) {
                              _controller.isSick.value = val;
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "Duration  (minutes)",
                      obscureText: false,
                      textInputType: TextInputType.text,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 34.h),

              ///=========================Nutrition===================
              CustomBox(
                height: 400.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.nutritionicon,
                          height: 18.h,
                          width: 18.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Nutrition",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Calories", color: Colors.white),
                            SizedBox(height: 5.h),
                            Container(
                              height: 32.h,
                              width: 150.w,
                              child: Customtextfield(
                                controller: weigthContoller,
                                hintText: "Type.. ",
                                obscureText: false,
                                textInputType: TextInputType.text,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Carbs", color: Colors.white),
                            SizedBox(height: 5.h),
                            Container(
                              height: 32.h,
                              width: 150.w,
                              child: Customtextfield(
                                controller: weigthContoller,
                                hintText: "Type.. ",
                                obscureText: false,
                                textInputType: TextInputType.text,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Protein", color: Colors.white),
                            SizedBox(height: 5.h),
                            Container(
                              height: 32.h,
                              width: 150.w,
                              child: Customtextfield(
                                controller: weigthContoller,
                                hintText: "Type.. ",
                                obscureText: false,
                                textInputType: TextInputType.text,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10.w),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Fats", color: Colors.white),
                            SizedBox(height: 5.h),
                            Container(
                              height: 32.h,
                              width: 150.w,
                              child: Customtextfield(
                                controller: weigthContoller,
                                hintText: "Type.. ",
                                obscureText: false,
                                textInputType: TextInputType.text,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10.h),

                    ///==============Hunger Seven========================
                    CustomSlider(
                      label: "Hunger    (1-10)",
                      value: _controller.countSeven,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Digestion eight========================
                    CustomSlider(
                      label: "Digestion    (1-10)",
                      value: _controller.counteight,
                    ),
                    SizedBox(height: 10.h),

                    CustomText(text: "Salt(g)", color: Colors.white),

                    SizedBox(height: 10.h),

                    Container(
                      height: 32.h,
                      width: double.infinity,
                      child: Customtextfield(
                        controller: weigthContoller,
                        hintText: "Type.. ",
                        obscureText: false,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10.h),

              ///==============Women========================
              CustomBox(
                height: 372.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.womenicon,
                          height: 18.h,
                          width: 18.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Women",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),

                    SizedBox(height: 11.h),

                    CustomBox(
                      height: 40.h,
                      borderColor: Colors.white12,
                      child: CustomDropdown<String>(
                        hint: "Cycle Phase?",
                        value: _dopdownController.selectedWomen,
                        items: _dopdownController.women,
                        getLabel: (city) => city,
                        dropdownColor: Colors.green,
                        onChanged: (value) {
                          _dopdownController.selectedWomen.value = value;
                        },
                      ),
                    ),
                    SizedBox(height: 11.h),
                    Container(
                      height: 42.h,
                      width: double.infinity,
                      child: Customtextfield(
                        controller: weigthContoller,
                        hintText: "cycle Day ( Monday)",
                        obscureText: false,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),

                    ///==============PMS Symptoms  nine========================
                    CustomSlider(
                      label: "PMS Symptoms    (1-10)",
                      value: _controller.countnine,
                    ),
                    SizedBox(height: 10.h),

                    ///==============Cramps ten========================
                    CustomSlider(
                      label: "Cramps    (1-10)",
                      value: _controller.countten,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(text: " symptoms", color: Colors.white),
                    SizedBox(height: 10.h),
                    CustomBox(
                      height: 40.h,
                      borderColor: Colors.white12,
                      child: CustomDropdown<String>(
                        hint: "Type..",
                        value: _dopdownController.selectedWomenlist,
                        items: _dopdownController.womenlist,
                        getLabel: (city) => city,
                        dropdownColor: AppColors.blue200,
                        onChanged: (value) {
                          _dopdownController.selectedWomenlist.value = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              ///==============PED========================
              CustomBox(
                height: 550.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.womenicon,
                          height: 18.h,
                          width: 18.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "PED",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    CustomBox(
                      height: 40.h,
                      borderColor: Colors.white12,
                      child: CustomDropdown<String>(
                        hint: "Training Completed?",
                        value: _dopdownController.selectedTraining,
                        items: _dopdownController.training,
                        getLabel: (city) => city,
                        dropdownColor: Colors.green,
                        onChanged: (value) {
                          _dopdownController.selectedTraining.value = value;
                        },
                      ),
                    ),

                    SizedBox(height: 8.h),

                    CustomText(
                      text: "side effects Notes",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    SizedBox(height: 8.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "Type....",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.fontisto_blood,
                          height: 18.h,
                          width: 18.w,
                        ),
                        SizedBox(width: 13.w),
                        CustomText(
                          text: "Blood Pressure(Everybody)",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "Systolic",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      height: 42.h,
                      width: double.infinity,
                      child: Customtextfield(
                        controller: weigthContoller,
                        hintText: "120 (mmhg)",
                        obscureText: false,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "Diastolic",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      height: 42.h,
                      width: double.infinity,
                      child: Customtextfield(
                        controller: weigthContoller,
                        hintText: "80 (mmhg)",
                        obscureText: false,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "Resting heart rate",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      height: 42.h,
                      width: double.infinity,
                      child: Customtextfield(
                        controller: weigthContoller,
                        hintText: "40-60 (BPM)",
                        obscureText: false,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      text: "blood glucose",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      height: 42.h,
                      width: double.infinity,
                      child: Customtextfield(
                        controller: weigthContoller,
                        hintText: "Type",
                        obscureText: false,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              ///==============Daily Notes========================
              CustomBox(
                height: 100.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Daily Notes",
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    SizedBox(height: 8.h),
                    Customtextfield(
                      controller: weigthContoller,
                      hintText: "Type....",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24.h),

              ///==============Submit Button========================
              CustomButton(text: "Submit", onPressed: () {}),

              SizedBox(height: 23.h),
            ],
          ),
        ),
      ),
    );
  }
}
