import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/views/home_screens/diet_screen/food_Items_screen/Controller/NutritionController.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/CustomBox_Container.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_Text.dart';
import '../../../../widgets/Custom_Textfeld.dart';
import '../../../../widgets/Custom_back_button.dart';
import 'Model/foodItem.dart';

class FoodItemsScreen extends StatelessWidget {
  FoodItemsScreen({super.key});

  final controller = Get.put(FoodItemController());
  final searchController = TextEditingController();
  final tabs = ["All", "Protein", "Carbs", "Fats", "Fiber"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Food item",
        leading: CustomBackButton(),
        actions: [
          IconButton(
            onPressed: () {
              // Add new food item logic
            },
            icon: Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: SvgPicture.asset(
                AppIcons.pluse_icon,
                height: 16.h,
                width: 16.w,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 37.h),
        child: Column(
          children: [
            // Search Box
            SizedBox(
              height: 49.h,
              child: Customtextfield(
                controller: searchController,
                hintText: "Search Food...",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
            ),

            SizedBox(height: 22.h),

            // Category Tabs
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return Obx(() {
                    final isSelected =
                        controller.selectedCategory.value == tabs[index];
                    return GestureDetector(
                      onTap: () =>
                          controller.selectedCategory.value = tabs[index],
                      child: Container(
                        margin: EdgeInsets.only(right: 8.w),
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.green200
                              : AppColors.black300,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.w500,
                            color: isSelected ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
            ),

            SizedBox(height: 25.h),
            // Exercise List
            Expanded(
              child: Obx(() {
                final exercises = controller.filtererFoodItem;

                if (exercises.isEmpty) {
                  return Center(
                    child: Text(
                      'No exercises found',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  );
                }

                return Column(
                  children: [
                    SizedBox(height: 10.h),
                    Expanded(
                      child: ListView.builder(
                        itemCount: exercises.length,
                        itemBuilder: (context, index) {
                          final exercise = exercises[index];
                          return Padding(
                            padding: EdgeInsets.only(bottom: 10.h),
                            child: _buildExerciseCard(exercise),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10.h),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseCard(FooditemModel fooditems) {
    return CustomBox(
      height: 127.h,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: fooditems.title,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    _buildTag(
                      fooditems.category,
                      AppColors.black300,
                      AppColors.tiya400,
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                // Category & Equipment
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Pro 100g:",
                      color: AppColors.tiya400,
                      fontSize: 14,
                    ),
                    CustomText(
                      text: fooditems.kcal,
                      color: AppColors.tiya400,
                      fontSize: 14,
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                // Muscle Tags
                Row(
                  children: [
                    Expanded(
                      child: _buildTag(
                        fooditems.p,
                        AppColors.black300,
                        Colors.white,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: _buildTag(
                        fooditems.c,
                        AppColors.green100,
                        AppColors.tiya100,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: _buildTag(
                        fooditems.f,
                        AppColors.orenge700,
                        Colors.white,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: _buildTag(
                        fooditems.fi,
                        Color(0xFF305132),
                        AppColors.tiya400,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: _buildTag(
                        fooditems.sat,
                        AppColors.green100,
                        Colors.white,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: _buildTag(
                        fooditems.unSat,
                        Color(0xFF39513A),
                        Color(0xFFBEF26B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text, Color bgColor, Color textColor) {
    return Container(
      height: 25.h,
      width: 71.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: CustomText(
        text: text,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
    );
  }
}
