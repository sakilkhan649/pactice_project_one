import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newproject/views/home_screens/training_screen/historie_screen/widget/Custom_texth.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import 'package:newproject/widgets/Custom_Text.dart';
import '../../../utils/app_icons/app_icons.dart';
import '../../../widgets/Custom_AppBar.dart';
import '../../../widgets/Custom_back_button.dart';

class ProfileDailyScreen extends StatelessWidget {
  final double size;
  ProfileDailyScreen({super.key, this.size = 80});

  List<Map<String, dynamic>> scheduleData = [
    {
      'week': 1,
      'date': '30 Dec,24',
      'phase': 'korpegewich',
      'bodyweight': '85.0',
      'color': Color(0xFFDAA520),
    },
    {
      'week': 2,
      'date': '30 Dec,24',
      'phase': 'korpegewich',
      'bodyweight': '83.6',
      'color': Color(0xFFDAA520),
    },
    {
      'week': 3,
      'date': '30 Dec,24',
      'phase': 'korpegewich',
      'bodyweight': '83.6',
      'color': Color(0xFFDAA520),
    },
    {
      'week': 4,
      'date': '30 Dec,24',
      'phase': 'korpegewich',
      'bodyweight': '83.6',
      'color': Color(0xFF8B6914),
    },
    {
      'week': 5,
      'date': '30 Dec,24',
      'phase': 'korpegewich',
      'bodyweight': '83.6',
      'color': Color(0xFF8B6914),
    },
    {
      'week': 6,
      'date': '30 Dec,24',
      'phase': 'korpegewich',
      'bodyweight': '83.6',
      'color': Color(0xFF558B2F),
    },
    {
      'week': 7,
      'date': '30 Dec,24',
      'phase': 'Offseason',
      'bodyweight': '83.6',
      'color': Color(0xFF558B2F),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(17.w, 20.w, 17.w, 40.w),
          child: Column(
            children: [
              ///======================Profile=========================
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        border: Border.all(width: 1, color: Colors.white),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: size / 2,
                        backgroundColor: Color(0xFF2A2A2A),
                        child: SvgPicture.asset(
                          AppIcons.profile_icon,
                          height: 34.h,
                          width: 34.h,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFEBE9E9),
                      ),
                      padding: EdgeInsets.all(4.w),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),

              ///===========================Column==============
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.personal_profile_icon,
                          height: 23.h,
                          width: 23.h,
                        ),
                        SizedBox(width: 12.w),
                        CustomTexth(
                          text: "Personal Data",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Full Name",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "John Doe",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Email",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "Max@examole.com",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Gender",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "Male",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),

              ///===========================Column==============
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.personal_profile_icon,
                          height: 23.h,
                          width: 23.h,
                        ),
                        SizedBox(width: 12.w),
                        CustomTexth(
                          text: "Athlete Info",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Status",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "NATURAL",
                          fontSize: 16,
                          color: Color(0xFFF2C159),
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Category",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "Lifestyle",
                          fontSize: 16,
                          color: Color(0xFF33BF08),
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Check-in day",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "Sunday",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Hight (cm)",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "180 (cm)",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Age",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "22 Years",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Goal",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "Lose body fat",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Training Day Steps ",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "10 Step",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Rest day Steps",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "10 Step",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Assigned Cardio per Week",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "10 (min)",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),

              ///===========================Column==============
              CustomBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.capicon,
                          height: 23.h,
                          width: 23.h,
                        ),
                        SizedBox(width: 12.w),
                        CustomTexth(
                          text: "Show Informetion",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Show Name",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "WBFF Muscle",
                          fontSize: 16,
                          color: Color(0xFFF2C159),
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Show Date",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "12 August 2024",
                          fontSize: 16,
                          color: Color(0xFF33BF08),
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Location",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "Olympia Hall, Germany",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTexth(
                          text: "Division",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomTexth(
                          text: "WBFF",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),

              ///========================================================
              ///===================== Table Section ====================
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFF424242), width: 1),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Header Row
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF9E9E9E),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              _buildHeaderCell('Week', width: 80),
                              _buildVerticalDivider(),
                              _buildHeaderCell('Date', width: 120),
                              _buildVerticalDivider(),
                              _buildHeaderCell('Phase', width: 180),
                              _buildVerticalDivider(),
                              _buildHeaderCell('Bodyweight', width: 120),
                            ],
                          ),
                        ),
                      ),
                      // Data Rows
                      ...scheduleData.asMap().entries.map((entry) {
                        int index = entry.key;
                        Map<String, dynamic> data = entry.value;
                        bool isLast = index == scheduleData.length - 1;
                        return _buildDataRow(
                          data['week'],
                          data['date'],
                          data['phase'],
                          data['bodyweight'],
                          data['color'],
                          isLast,
                          index,
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///=====================================================================================
  ///========================= Table Helper Methods =====================================
  ///=====================================================================================

  Widget _buildVerticalDivider() {
    return Container(width: 1, color: Color(0xFF757575));
  }

  Widget _buildHeaderCell(String text, {required double width}) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildDataRow(
    int week,
    String date,
    String phase,
    String bodyweight,
    Color color,
    bool isLast,
    int index,
  ) {
    Color weekBgColor = index.isEven ? Color(0xFF000000) : Color(0xFF263238);
    Color dateBgColor = index.isEven ? Color(0xFF000000) : Color(0xFF263238);
    Color bodyweightBgColor = index.isEven
        ? Color(0xFF000000)
        : Color(0xFF263238);

    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFF424242), width: 1)),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Week Column
            Container(
              width: 80,
              color: weekBgColor,
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
              child: Text(
                '${week ?? 0}',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(width: 1, color: Color(0xFF424242)),
            // Date Column
            Container(
              width: 120,
              color: dateBgColor,
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
              child: Text(
                date ?? '',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(width: 1, color: Color(0xFF424242)),
            // Phase Column
            Container(
              width: 180,
              color: color,
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    phase ?? '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.white70, size: 24),
                ],
              ),
            ),
            Container(width: 1, color: Color(0xFF424242)),
            // Bodyweight Column
            Container(
              width: 120,
              color: bodyweightBgColor,
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
              child: Text(
                bodyweight ?? '',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
