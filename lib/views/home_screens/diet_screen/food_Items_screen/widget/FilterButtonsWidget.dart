import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Controller/NutritionController.dart';

class FilterButtonsWidget extends StatelessWidget {
  final NutritionController controller;

  const FilterButtonsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: controller.filters.length,
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final filter = controller.filters[index];
          return Obx(() {
            final isActive = controller.activeFilter.value == filter;
            return GestureDetector(
              onTap: () => controller.setFilter(filter),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 12.h,
                ),
                decoration: BoxDecoration(
                  color: isActive
                      ? const Color(0xFF10b981)
                      : const Color(0xFF374151),
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: isActive
                      ? [
                    BoxShadow(
                      color: const Color(0xFF10b981).withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ]
                      : [],
                ),
                child: Center(
                  child: Text(
                    filter,
                    style: TextStyle(
                      color: isActive
                          ? const Color(0xFF1a1a1a)
                          : const Color(0xFFd1d5db),
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}