import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/utils/app_colors/app_colors.dart';
import 'package:newproject/views/home_screens/training_screen/widgets/Custom_container.dart';
import 'package:newproject/widgets/CustomBox_Container.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';

class SupplementsScreen extends StatelessWidget {
  SupplementsScreen({super.key});
  final List<Map<String, String>> supplements = [
    {
      'name': 'Multivitamin',
      'dosage': '5g per day',
      'time': 'morning',
      'purpose': 'Text',
    },
    {
      'name': 'Vitamin',
      'dosage': '5g per day',
      'time': 'morning',
      'purpose': 'Text',
    },
    {
      'name': 'Zink',
      'dosage': '5g per day',
      'time': 'morning',
      'purpose': 'Text',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: " Supplement", leading: CustomBackButton()),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(22.w, 20.w, 22.w, 80.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0.w, 20.w, 0.w, 60.w),
              decoration: BoxDecoration(
                color: Color(0xFF101021),
                border: Border.all(color: Colors.white12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.water_drop, color: Colors.blue, size: 28),
                      const SizedBox(width: 12),
                      const Text(
                        'Supplement',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  // Table Container
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1D2E),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          // Table Header
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFF232735),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                _buildHeaderCell('Name'),
                                _buildHeaderCell('Dosage'),
                                _buildHeaderCell('Time'),
                                _buildHeaderCell('Purpose'),
                              ],
                            ),
                          ),

                          // Table Rows
                          ...List.generate(supplements.length, (index) {
                            final supplement = supplements[index];
                            final isLast = index == supplements.length - 1;

                            return Column(
                              children: [
                                _buildTableRow(
                                  name: supplement['name']!,
                                  dosage: supplement['dosage']!,
                                  time: supplement['time']!,
                                  purpose: supplement['purpose']!,
                                ),

                                if (!isLast)
                                  Container(
                                    height: 1,
                                    color: Colors.white.withOpacity(0.1),
                                  ),
                              ],
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

/// ------- Header Cell ---------
Widget _buildHeaderCell(String text) {
  return Container(
    width: 120,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      border: Border(
        right: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

/// ------- Table Row ---------
Widget _buildTableRow({
  required String name,
  required String dosage,
  required String time,
  required String purpose,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    child: Row(
      children: [
        _buildDataCell(name),
        _buildDataCell(dosage),
        _buildDataCell(time),
        _buildDataCell(purpose),
      ],
    ),
  );
}

/// ------- Data Cell ---------
Widget _buildDataCell(String text) {
  return Container(
    width: 120,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      border: Border(
        right: BorderSide(color: Colors.white.withOpacity(0.1), width: 1),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white.withOpacity(0.8),
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
