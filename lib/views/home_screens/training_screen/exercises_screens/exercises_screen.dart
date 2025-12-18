import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/CustomBox_Container.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_Text.dart';
import '../../../../widgets/Custom_Textfeld.dart';
import '../../../../widgets/Custom_back_button.dart';
import '../widgets/Custom_container.dart';
import 'controller/exercises_controller.dart';
import 'model/model.dart';

class ExercisesScreen extends StatelessWidget {
  ExercisesScreen({super.key});

  final controller = Get.put(ExerciseController());
  final searchController = TextEditingController();
  final tabs = ["All", "Chest", "Back", "Legs"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Exercise", leading: CustomBackButton()),
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
                hintText: "Search Exercise",
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
                          horizontal: 28.5.w,
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
                final exercises = controller.filteredExercises;

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

  Widget _buildExerciseCard(ExerciseModel exercise) {
    return CustomBox(
      child: Row(
        children: [
          // Icon Container
          CustomContainer(
            borderColor: AppColors.black300,
            height: 97.h,
            width: 97.w,
            backgroundColor: AppColors.black300,
            child: Transform.rotate(
              angle: 40 * 3.1416 / 180,
              child: SvgPicture.asset(AppIcons.hemaricon),
            ),
          ),

          SizedBox(width: 10.w),

          // Exercise Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Title
                CustomText(
                  text: exercise.title,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),

                SizedBox(height: 10.h),

                // Category & Equipment
                Row(
                  children: [
                    _buildTag(exercise.category, AppColors.tiya200),
                    SizedBox(width: 6.w),
                    Transform.rotate(
                      angle: 40 * 3.1416 / 180,
                      child: SvgPicture.asset(AppIcons.hemaricon),
                    ),
                    SizedBox(width: 6.w),
                    CustomText(
                      text: exercise.equipment,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                // Muscle Tags
                Row(
                  children: exercise.muscles
                      .map(
                        (muscle) => Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: _buildTag(muscle, AppColors.black300),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text, Color color) {
    return Container(
      height: 25.h,
      width: 61.w,
      // padding: EdgeInsets.symmetric(horizontal: 5.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: CustomText(
        text: text,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    );
  }
}
