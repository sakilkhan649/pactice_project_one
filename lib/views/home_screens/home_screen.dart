import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:newproject/utils/app_icons/app_icons.dart';

import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BottomNabBarController _controller = Get.put(BottomNabBarController());

  List<String> icons = [
    AppIcons.dailyicon,
    AppIcons.checkicon,
    AppIcons.trainingicon,
    AppIcons.dieticon,
    AppIcons.profileicon,
  ];

  List<String> labels = ["Daily", "Tasks", "Training", "Diet", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _controller.pages[_controller.currentIndex.value]),

      bottomNavigationBar: Obx(
        () => Padding(
          padding: EdgeInsets.only(bottom: 10.r, left: 5.r, right: 5.r),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 15.r),
            decoration: BoxDecoration(
              color: Color(0xff8E8E8E),
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(icons.length, (index) {
                bool isSelected = _controller.currentIndex.value == index;

                return GestureDetector(
                  onTap: () {
                    _controller.currentIndex.value = index;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: EdgeInsets.symmetric(
                      vertical: 18.r,
                      horizontal: isSelected ? 21.r : 18.r,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.black87 : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          icons[index],
                          colorFilter: ColorFilter.mode(
                            isSelected ? Colors.white : Colors.grey.shade800,
                            BlendMode.srcIn,
                          ),
                          width: MediaQuery.of(context).size.width * 0.05,
                          height: MediaQuery.of(context).size.width * 0.05,
                        ),
                        if (isSelected)
                          Padding(
                            padding: EdgeInsets.only(left: 8.r),
                            child: Text(
                              labels[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
