import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';

class TrainingSplitScreen extends StatelessWidget {
  final List<Map<String, String>> schedule = [
    {"day": "Day 1", "work": "Chest"},
    {"day": "Day 2", "work": "Back"},
    {"day": "Day 3", "work": "Rest"},
    {"day": "Day 4", "work": "Legs"},
    {"day": "Day 5", "work": "Arms"},
    {"day": "Day 6", "work": "Rest"},
    {"day": "Day 7", "work": "Push"},
    {"day": "Day 8", "work": "Pull"},
    {"day": "Day 9", "work": "Rest"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Training plan", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(23.w, 20.w, 23.w, 209.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.w),
            decoration: BoxDecoration(
              color: AppColors.blue400,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.white.withOpacity(0.1)),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.w),
              decoration: BoxDecoration(
                color: Color(0xFF111122),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Colors.white.withOpacity(0.1)),
              ),
              child: Column(
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Day",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Work",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Divider(color: Colors.white12),
                  Column(
                    children: schedule.map((item) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  item["day"]!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  item["work"]!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(color: Colors.white12),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
