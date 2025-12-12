import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/app_icons/app_icons.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';
import '../../training_screen/historie_screen/widget/Custom_texth.dart';

class SupplementsScreen extends StatelessWidget {
  const SupplementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Supplement", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(22.w, 20.w, 22.w, 10.w),
        child: Container(
          height: 340,
          decoration: BoxDecoration(
            color: const Color(0xFF101021),
            border: Border.all(color: Colors.white12),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header Row
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.dopicon,
                      height: 24.h,
                      width: 24.w,
                    ),
                    SizedBox(width: 10.w),
                    const CustomTexth(
                      text: "Supplement",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.h),

              /// Table
              Expanded(child: _buildTable(context)),
            ],
          ),
        ),
      ),
    );
  }

  /// TABLE BUILDER
  Widget _buildTable(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.white12, // Divider color fixed
        ),
        child: DataTable(
          decoration: BoxDecoration(border: Border.all(color: Colors.white12)),
          headingRowColor: MaterialStateProperty.all(const Color(0xFF1E1E2F)),
          dataRowColor: MaterialStateProperty.all(const Color(0xFF101021)),
          border: TableBorder.all(color: Colors.white12),
          columnSpacing: 30.w,
          columns: _buildColumns(),
          rows: _buildRows(),
          dividerThickness: 0.3,
        ),
      ),
    );
  }

  /// TABLE COLUMNS
  List<DataColumn> _buildColumns() {
    return const [
      DataColumn(
        label: Text("Name", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Dosage", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Time", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Purpose", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Brand", style: TextStyle(color: Colors.white)),
      ),
      DataColumn(
        label: Text("Comment", style: TextStyle(color: Colors.white)),
      ),
    ];
  }

  /// TABLE ROWS
  List<DataRow> _buildRows() {
    final supplements = [
      {
        "Name": "Multivitamin",
        "Dosage": "5g per day",
        "Time": "Morning",
        "Purpose": "Energy & health",
        "Brand": "ABC Health",
        "Comment": "Take after breakfast",
      },
      {
        "Name": "Vitamin C",
        "Dosage": "1 Tablet",
        "Time": "Evening",
        "Purpose": "Boost immunity",
        "Brand": "XYZ Pharma",
        "Comment": "With warm water",
      },
      {
        "Name": "Zinc",
        "Dosage": "10mg",
        "Time": "Night",
        "Purpose": "Metabolism support",
        "Brand": "NutraPro",
        "Comment": "Before sleep",
      },
    ];

    return supplements.map((item) {
      return DataRow(
        cells: [
          DataCell(
            Text(item["Name"]!, style: const TextStyle(color: Colors.white)),
          ),
          DataCell(
            Text(item["Dosage"]!, style: const TextStyle(color: Colors.white)),
          ),
          DataCell(
            Text(item["Time"]!, style: const TextStyle(color: Colors.white)),
          ),
          DataCell(
            Text(item["Purpose"]!, style: const TextStyle(color: Colors.white)),
          ),
          DataCell(
            Text(item["Brand"]!, style: const TextStyle(color: Colors.white)),
          ),
          DataCell(
            Text(item["Comment"]!, style: const TextStyle(color: Colors.white)),
          ),
        ],
      );
    }).toList();
  }
}
