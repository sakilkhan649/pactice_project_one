import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/utils/app_icons/app_icons.dart';
import 'package:newproject/views/home_screens/checkin_screen.dart';
import 'package:newproject/views/home_screens/daily_screen.dart';
import 'package:newproject/views/home_screens/diet_screen.dart';
import 'package:newproject/views/home_screens/profile_screen.dart';
import 'package:newproject/views/home_screens/training_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final currentIndex = 0.obs;

  final icons = [
    AppIcons.dailyicon,
    AppIcons.checkicon,
    AppIcons.trainingicon,
    AppIcons.dieticon,
    AppIcons.profileicon,
  ];

  final labels = ["Daily", "Check-in", "Training", "Diet", "Profile"];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double itemWidth = (screenWidth - 60) / icons.length;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(
        () => IndexedStack(
          index: currentIndex.value,
          children: [
            DailyScreen(),
            CheckinScreen(),
            TrainingScreen(),
            DietScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
          height: 81.h,
          decoration: BoxDecoration(
            color: AppColors.gray100,
            borderRadius: BorderRadius.circular(45),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(icons.length, (index) {
              bool isSelected = currentIndex.value == index;
              return GestureDetector(
                onTap: () => currentIndex.value = index,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOutCubic,
                  width: isSelected ? itemWidth + 40 : itemWidth - 10,
                  height: isSelected ? 62.h : 55.h,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : AppColors.gray200,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: isSelected ? 18.h : 16.h,
                        width: isSelected ? 18.w : 16.w,
                        child: SvgPicture.asset(
                          icons[index],
                          colorFilter: ColorFilter.mode(
                            isSelected ? Colors.grey : Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),

                      if (isSelected) ...[
                        const SizedBox(width: 4),
                        Text(
                          labels[index],
                          style: TextStyle(
                            color: isSelected ? Colors.grey : Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
