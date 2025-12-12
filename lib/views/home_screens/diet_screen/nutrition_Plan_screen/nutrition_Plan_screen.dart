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
import '../../../../widgets/Custom_back_button.dart';

class NutritionPlanScreen extends StatelessWidget {
  const NutritionPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Nutrition  Plan",
        leading: CustomBackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.edit_icon,
              height: 20.h,
              width: 20.w,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(22.w, 30.w, 18.w, 80.w),
          child: Column(
            children: [
              CustomContainer(
                borderColor: AppColors.green300,
                backgroundColor: AppColors.green400,
                horizontalPadding: 40.w,
                verticalPadding: 20.w,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.footicon,
                          height: 40.h,
                          width: 40.w,
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTexth(
                              text: "DEVELOPMENT PLAN",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.orenge600,
                            ),
                            SizedBox(height: 9.h),
                            CustomTexth(
                              text: "7 Meals",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 27.h),
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
              SizedBox(height: 24.h),

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
                    mealName: 'BREAKFAST',
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
                    mealName: 'SNACK 1',
                    calories: 300,
                    protein: 20,
                    carbs: 40,
                    fat: 4,
                    items: ['Protein (40g)', 'Apple (1 Piece)'],
                  ),

                  const SizedBox(height: 16),

                  CustomCardOne(
                    time: '1:30',
                    mealName: 'LUNCH',
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
                    mealName: 'Dinner',
                    calories: 300,
                    protein: 20,
                    carbs: 40,
                    fat: 4,
                    items: ['Protein (40g)', 'Apple (1 Piece)'],
                  ),

                  const SizedBox(height: 16),

                  CustomCardOne(
                    time: '7:00',
                    mealName: 'Recovery SNACK ',
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
