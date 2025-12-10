import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Controller/NutritionController.dart';
import '../Model/foodItem.dart';
import 'NutritionBadge.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem item;
  final NutritionController controller;

  const FoodItemCard({super.key, required this.item, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF2d2d2d),
            Color(0xFF262626),
          ],
        ),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: const Color(0xFF374151),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  item.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 6.h,
                ),
                decoration: BoxDecoration(
                  color: controller.getCategoryColor(item.category).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(
                    color: controller.getCategoryColor(item.category).withOpacity(0.3),
                  ),
                ),
                child: Text(
                  item.category,
                  style: TextStyle(
                    color: controller.getCategoryColor(item.category),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Calories
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.perServing,
                style: TextStyle(
                  color: const Color(0xFF10b981),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${item.calories} kcal',
                style: TextStyle(
                  color: const Color(0xFF10b981),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Nutrition Details
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              NutritionBadge(label: 'P', value: '${item.nutritionInfo.protein}g', color: Colors.blue),
              NutritionBadge(label: 'C', value: '${item.nutritionInfo.carbs}g', color: const Color(0xFF10b981)),
              NutritionBadge(label: 'F', value: '${item.nutritionInfo.fat}g', color: Colors.purple),
              NutritionBadge(label: 'F', value: '${item.nutritionInfo.fiber}g', color: Colors.orange),
              NutritionBadge(label: 'Sat F', value: '${item.nutritionInfo.saturatedFat}g', color: Colors.red),
              NutritionBadge(label: 'Unsat F', value: '${item.nutritionInfo.unsaturatedFat}g', color: Colors.yellow),
            ],
          ),
        ],
      ),
    );
  }
}