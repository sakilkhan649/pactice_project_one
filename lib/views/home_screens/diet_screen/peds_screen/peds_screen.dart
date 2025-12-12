import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';

class PedsScreen extends StatelessWidget {
  const PedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "PEDs", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          22.w,
          20.w,
          0.w,
          10.w,
        ), // right padding fixed
        child: Container(
          height: 500.h,
          padding: EdgeInsets.fromLTRB(8.w, 8.w, 5.w, 40.w),
          decoration: BoxDecoration(
            color: const Color(0xFF101021),
            border: Border.all(color: Colors.white12),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              bottomLeft: Radius.circular(12.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWeekHeader(),
              SizedBox(height: 5.h),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width:
                        120.w +
                        70.w +
                        70.w +
                        70.w +
                        7 * 50.w, // total width of table
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: _getTableData()
                            .map((category) => _buildCategorySection(category))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeekHeader() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
      ),
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 120.w,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Text(
                  "WEEK 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              ...[
                    "Dosage",
                    "Frequency",
                    "MO",
                    "TUE",
                    "WED",
                    "THU",
                    "FRI",
                    "SAT",
                    "SUN",
                  ]
                  .map(
                    (day) => Container(
                      width: day.length > 3 ? 70.w : 50.w,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text(
                        day,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySection(Map<String, dynamic> category) {
    return Column(
      children: category['items'].map<Widget>((item) {
        bool isFirst = category['items'].first == item;
        return SizedBox(
          height: 40.h,
          child: Row(
            children: [
              _buildCell(isFirst ? category['category'] : '', width: 120.w),
              _buildCell(item['name'], width: 70.w),
              _buildCell(item['dosage'] ?? '', width: 70.w),
              _buildCell(item['frequency'] ?? '', width: 70.w),
              ..._buildDayCells(item['days']),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCell(String text, {required double width}) {
    return Container(
      width: width,
      height: 40.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF503655),
        border: Border(
          top: BorderSide(color: Colors.white12, width: 0.5),
          bottom: BorderSide(color: Colors.white12, width: 0.5),
          right: BorderSide(color: Colors.white12, width: 0.5),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 10.sp),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  List<Widget> _buildDayCells(Map<String, String>? days) {
    List<String> weekDays = ['MO', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    return weekDays
        .map((day) => _buildCell(days?[day] ?? '', width: 50.w))
        .toList();
  }

  List<Map<String, dynamic>> _getTableData() {
    return [
      {
        'category': 'TEST',
        'items': [
          {'name': 'TESTE'},
          {'name': 'TESTP'},
          {'name': 'HALOTESTIN'},
          {'name': 'DIANABOL'},
          {'name': 'PRIMOBOLAN'},
          {'name': 'MASTERON'},
          {'name': 'ANAVAR'},
        ],
      },
      {
        'category': 'DHT',
        'items': [
          {'name': 'PROVIRON'},
          {'name': 'WINSTROL'},
          {'name': 'ANADROL'},
          {'name': 'NPP'},
          {'name': 'DECA'},
          {'name': 'TREN E'},
        ],
      },
      {
        'category': '19-NOR',
        'items': [
          {'name': 'ANASTROZOLE'},
          {'name': 'EXEMESTANE'},
          {'name': 'ARIMIDEX'},
          {'name': 'CLOMID'},
        ],
      },
      {
        'category': 'ESTROGEN RCP ANTAGONIST',
        'items': [
          {'name': 'HCG'},
          {'name': 'ARIMIDEX'},
          {'name': 'YOHIMBINE'},
        ],
      },
      {
        'category': 'FATLOSS',
        'items': [
          {'name': 'CLEN'},
          {'name': 'MCM'},
        ],
      },
      {
        'category': 'THYROID',
        'items': [
          {
            'name': 'T3',
            'dosage': '4.0 mg',
            'frequency': 'ED',
            'days': {
              'MO': '4.0 IU',
              'TUE': '4.0 IU',
              'WED': '4.0 IU',
              'THU': '4.0 IU',
              'FRI': '4.0 IU',
              'SAT': '4.0 IU',
              'SUN': '4.0 IU',
            },
          },
          {'name': 'T4'},
          {'name': 'LARTUS'},
        ],
      },
      {
        'category': 'INSULIN',
        'items': [
          {'name': 'NOVOFAPID'},
          {'name': 'TELMISARTAN'},
        ],
      },
      {
        'category': 'OTHER',
        'items': [
          {'name': 'METFORMIN'},
          {'name': 'TIRBO'},
          {'name': 'BPC-157'},
        ],
      },
      {
        'category': 'PEPTIDES',
        'items': [
          {'name': 'MOHEC'},
          {'name': 'SUP-PP-332'},
        ],
      },
    ];
  }
}
