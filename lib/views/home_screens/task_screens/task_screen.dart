import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:newproject/utils/app_icons/app_icons.dart';
import 'package:newproject/views/home_screens/task_screens/checking_screen/checking_screen.dart';
import 'package:newproject/views/home_screens/task_screens/photos_screen/photos_screen.dart';
import 'package:newproject/views/home_screens/task_screens/profile_task_screen/profile_task_screen.dart';
import 'package:newproject/views/home_screens/task_screens/questions_screen/questions_screen.dart';
import '../../../widgets/Custom_AppBar.dart';
import '../../../widgets/Custom_back_button.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> with TickerProviderStateMixin {
  late TabController tabController;
  final RxInt selectedIndex = 0.obs;

  final List<MenuItemData> menuItems = [
    MenuItemData(
      icon: SvgPicture.asset(AppIcons.profile_task),
      label: "Profile",
    ),
    MenuItemData(icon: SvgPicture.asset(AppIcons.photo_task), label: "Photos"),
    MenuItemData(
      icon: SvgPicture.asset(AppIcons.question_task),
      label: "Questions",
    ),
    MenuItemData(
      icon: SvgPicture.asset(AppIcons.checking_task),
      label: "Checking",
    ),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      selectedIndex.value = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(
        title: "Daily Tracking",
        leading: CustomBackButton(),
      ),

      body: Column(
        children: [
          /// ---------------- TOP MENU ----------------
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(menuItems.length, (index) {
                final item = menuItems[index];
                final bool isSelected = selectedIndex.value == index;

                return GestureDetector(
                  onTap: () {
                    selectedIndex.value = index;
                    tabController.animateTo(index); // ← WORKING NOW ✔
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 3.h,
                        width: 65.w,
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.green : Colors.transparent,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),

                      SizedBox(height: 8.h),

                      Container(
                        padding: EdgeInsets.all(12.w),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.green
                              : Colors.white.withOpacity(0.08),
                          shape: BoxShape.circle,
                        ),
                        child: SizedBox(
                          height: 30.w,
                          width: 30.w,
                          child: item.icon,
                        ),
                      ),

                      SizedBox(height: 6.h),

                      Text(
                        item.label,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),

          SizedBox(height: 15.h),

          /// ------------ TAB CONTENT ------------
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ProfileTaskScreen(),
                PhotosScreen(),
                QuestionsScreen(),
                Checkingscreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItemData {
  final Widget icon;
  final String label;
  MenuItemData({required this.icon, required this.label});
}
