import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../training_screen/widgets/Custom_container.dart';
import '../controller/TrackCardController.dart';


class CustomCardOneTrack extends StatelessWidget {
  final String time;
  final String mealName;
  final int calories;
  final int protein;
  final int carbs;
  final int fat;
  final List<String> items;

  CustomCardOneTrack({
    super.key,
    required this.time,
    required this.mealName,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final Trackcardcontroller controller = Get.put(
      Trackcardcontroller(),
      tag: mealName,
    ); // UNIQUE CONTROLLER

    return CustomContainer(
      borderColor: Colors.white12,
      backgroundColor: AppColors.blue400,
      child: Column(
        children: [
          InkWell(
            onTap: controller.toggleExpand,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      // time box
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.blue1000,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          time,
                          style: const TextStyle(
                            color: Color(0xFF4ADE80),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),

                      // meal name
                      Text(
                        mealName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const Spacer(),

                      /// Expand icon
                      Obx(
                            () => Icon(
                          controller.isExpanded.value
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  /// Nutrients row
                  Row(
                    children: [
                      Text(
                        '$calories kcal',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(width: 16),
                      CustomCardTwo(
                        label: 'P: $protein g',
                        color: Color(0xFF3B82F6),
                      ),
                      const SizedBox(width: 8),
                      CustomCardTwo(
                        label: 'C: $carbs g',
                        color: Color(0xFF4ADE80),
                      ),
                      const SizedBox(width: 8),
                      CustomCardTwo(
                        label: 'F: $fat g',
                        color: Color(0xFFF59E0B),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// Expanded Section
          Obx(
                () => controller.isExpanded.value
                ? Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: items
                    .map(
                      (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Container(
                          width: 7.w,
                          height: 7.h,
                          decoration: const BoxDecoration(
                            color: Colors.white54,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          item,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    .toList(),
              ),
            )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class CustomCardTwo extends StatelessWidget {
  final String label;
  final Color color;
  const CustomCardTwo({required this.label, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
