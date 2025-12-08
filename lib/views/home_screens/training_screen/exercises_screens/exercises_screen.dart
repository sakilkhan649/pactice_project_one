import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/views/home_screens/training_screen/exercises_screens/all_screen.dart';
import 'package:newproject/views/home_screens/training_screen/exercises_screens/back_screen.dart';
import 'package:newproject/views/home_screens/training_screen/exercises_screens/chest_screen.dart';
import 'package:newproject/views/home_screens/training_screen/exercises_screens/legs_screen.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_Textfeld.dart';
import '../../../../widgets/Custom_back_button.dart';

class ExercisesScreen extends StatelessWidget {
  ExercisesScreen({super.key});

  TextEditingController _textEditingControllerOne = TextEditingController();

  final RxInt selectedIndex = 0.obs;

  final List<String> tabs = ["All", "Chest", "Back", "Legs"];

  final List<Widget> pages = [
    AllScreen(),
    ChestScreen(),
    BackScreen(),
    LegsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Exercise", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(25.w, 37.w, 25.w, 209.w),
        child: Column(
          children: [
            Container(
              height: 49.h,
              child: Customtextfield(
                controller: _textEditingControllerOne,
                hintText: "Search Exercise",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
            ),
            SizedBox(height: 22.sp),
            // Tab Bar
            Container(
              height: 46.h,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5.r),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return Obx(
                    () => GestureDetector(
                      onTap: () {
                        selectedIndex.value = index;
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(
                          horizontal: 8.r,
                          vertical: 2.r,
                        ),
                        decoration: BoxDecoration(
                          color: selectedIndex.value == index
                              ? AppColors.green200
                              : AppColors.black300,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10.r,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              18.r,
                              10.r,
                              18.r,
                              10.r,
                            ),
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: selectedIndex.value == index
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                                color: selectedIndex.value == index
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Page Content
            Expanded(
              child: Obx(
                () => AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),

                  // Simple Fade Animation
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },

                  child: pages[selectedIndex.value],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
