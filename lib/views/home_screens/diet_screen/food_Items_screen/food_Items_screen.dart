import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newproject/views/home_screens/diet_screen/food_Items_screen/widget/FilterButtonsWidget.dart';
import 'package:newproject/views/home_screens/diet_screen/food_Items_screen/widget/FoodItemCard.dart';
import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';
import 'Controller/NutritionController.dart';

class FoodItemsScreen extends StatelessWidget {
  FoodItemsScreen({super.key});

  final controller = Get.put(NutritionController());

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
        padding: EdgeInsets.fromLTRB(24.w, 29.h, 24.w, 80.h),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF1a1a1a), Color(0xFF2d2d2d), Color(0xFF1a1a1a)],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                // Filter Buttons
                FilterButtonsWidget(controller: controller),
                SizedBox(height: 24.h),

                // Food Items List
                Expanded(
                  child: Obx(() {
                    if (controller.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFF10b981),
                        ),
                      );
                    }

                    if (controller.filteredItems.isEmpty) {
                      return Center(
                        child: Text(
                          'No food items found',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16.sp,
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      itemCount: controller.filteredItems.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 16.h),
                      itemBuilder: (context, index) {
                        final item = controller.filteredItems[index];
                        return FoodItemCard(item: item, controller: controller);
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
