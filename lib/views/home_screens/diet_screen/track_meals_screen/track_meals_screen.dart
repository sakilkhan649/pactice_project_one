import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/views/home_screens/diet_screen/nutrition_Plan_screen/widget/Custom_Card_One.dart';
import 'package:newproject/views/home_screens/diet_screen/nutrition_Plan_screen/widget/Custom_circular_progress.dart';
import 'package:newproject/views/home_screens/training_screen/historie_screen/widget/Custom_texth.dart';
import 'package:newproject/views/home_screens/training_screen/widgets/Custom_container.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_Dailog.dart';
import '../../../../widgets/Custom_back_button.dart';

class TrackMealsScreen extends StatelessWidget {
  const TrackMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Track Meals", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(22.w, 30.w, 18.w, 80.w),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Customdialog();
                    },
                  );
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                      vertical: 11.w,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF101021),
                      border: Border.all(color: Color(0xFF6BA66B), width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: CustomTexth(text: "+ Add"),
                  ),
                ),
              ),
              SizedBox(height: 16.h),

              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 11.w),
                decoration: BoxDecoration(
                  color: Color(0xFF101021),
                  border: Border.all(color: Color(0xFF6BA66B), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppIcons.dopdown_icon_down_one,
                      height: 24.h,
                      width: 24.w,
                    ),

                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.bag_icon,
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(width: 10.w),
                        CustomTexth(
                          text: "Today",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      AppIcons.dopdown_icon_down_two,
                      height: 23.h,
                      width: 23.w,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 21.h),

              CustomContainer(
                borderColor: AppColors.green300,
                backgroundColor: AppColors.green400,
                horizontalPadding: 20.w,
                verticalPadding: 10.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomContainer(
                      borderColor: AppColors.gray700,
                      backgroundColor: AppColors.gray700,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.dope_two_icon,
                                    height: 24.h,
                                    width: 24.w,
                                  ),
                                  CustomTexth(text: "4.0L"),
                                  CustomTexth(text: "Water"),
                                ],
                              ),
                              Column(
                                children: [
                                  SvgPicture.asset(
                                    AppIcons.dope_three_icon,
                                    height: 24.h,
                                    width: 24.w,
                                  ),
                                  CustomTexth(text: "3200"),
                                  CustomTexth(text: "Calories"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),

              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomCircularProgress(
                          title: "Protein",
                          value: "200g",
                          borderColor: AppColors.blue1100,
                          textColor: AppColors.blue1100,
                        ),
                        CustomCircularProgress(
                          title: "Carbs",
                          value: "200g",
                          borderColor: AppColors.tiya100,
                          textColor: AppColors.tiya100,
                        ),
                        CustomCircularProgress(
                          title: "Fats",
                          value: "80g",
                          borderColor: AppColors.orenge500,
                          textColor: AppColors.orenge500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  const SizedBox(height: 16),

                  CustomCardOne(
                    time: '7:00',
                    mealName: 'Meal 1',
                    calories: 550,
                    protein: 35,
                    carbs: 75,
                    fat: 5,
                    items: [
                      'Oats (30g)',
                      'Whey Protein (30g)',
                      'Banana (1 Piece)',
                      'Almonds (20g)',
                    ],
                  ),

                  const SizedBox(height: 16),

                  CustomCardOne(
                    time: '10:00',
                    mealName: 'Meal 2',
                    calories: 300,
                    protein: 20,
                    carbs: 40,
                    fat: 4,
                    items: ['Protein (40g)', 'Apple (1 Piece)'],
                  ),

                  const SizedBox(height: 16),

                  CustomCardOne(
                    time: '1:30',
                    mealName: 'Meal 3',
                    calories: 650,
                    protein: 40,
                    carbs: 85,
                    fat: 12,
                    items: [
                      'Chicken breast (200g)',
                      'Rice (150g)',
                      'Mixed Vegetables (200g)',
                      'Olive oil (10ml)',
                    ],
                  ),

                  const SizedBox(height: 16),

                  CustomCardOne(
                    time: '7:00',
                    mealName: 'Meal 4',
                    calories: 300,
                    protein: 20,
                    carbs: 40,
                    fat: 4,
                    items: ['Protein (40g)', 'Apple (1 Piece)'],
                  ),

                  const SizedBox(height: 16),

                  CustomCardOne(
                    time: '7:00',
                    mealName: 'Meal 5',
                    calories: 550,
                    protein: 35,
                    carbs: 75,
                    fat: 5,
                    items: ['Protein (40g)', 'Apple (1 Piece)'],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
