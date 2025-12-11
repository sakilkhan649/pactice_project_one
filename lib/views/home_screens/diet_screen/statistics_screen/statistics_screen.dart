import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math' as math;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/views/home_screens/training_screen/historie_screen/widget/Custom_texth.dart';
import '../../../../widgets/Custom_AppBar.dart';
import '../../../../widgets/Custom_back_button.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Statistics", leading: CustomBackButton()),
      backgroundColor: Colors.black,

      body: Padding(
        padding: EdgeInsets.fromLTRB(22.w, 20.w, 22.w, 80.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTexth(
              text: "Macros",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(height: 25.h),

            Row(
              children: [
                SizedBox(
                  width: 80.w,
                  height: 80.w,
                  child: CustomPaint(painter: MacroRingPainter()),
                ),
                SizedBox(width: 30.w),

                Expanded(
                  child: Column(
                    children: [
                      _buildMacroRow(
                        color: Color(0xFF6DF43C),
                        label: 'Proteins 25%',
                        value: '100g',
                      ),
                      SizedBox(height: 15.h),

                      _buildMacroRow(
                        color: Color(0xFF1D89E4),
                        label: 'Carbs 35%',
                        value: '80g',
                      ),
                      SizedBox(height: 15.h),

                      _buildMacroRow(
                        color: const Color(0xFFCA8345),
                        label: 'Fats 55%',
                        value: '60g',
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 40.h),

            CustomTexth(
              text: "Calories",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),

            SizedBox(height: 20.h),

            SizedBox(
              height: 250.h,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 500,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.white.withOpacity(0.1),
                        strokeWidth: 1,
                        dashArray: [5, 5],
                      );
                    },
                  ),

                  titlesData: FlTitlesData(
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          const days = [
                            'Mon',
                            'Tue',
                            'Wed',
                            'Thu',
                            'Fri',
                            'Sat',
                            'Sun',
                          ];
                          int index = value.toInt();
                          if (index >= 0 && index < days.length) {
                            return Padding(
                              padding: EdgeInsets.only(top: 8.h, right: 20.w),
                              child: Text(
                                days[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),

                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 500,
                        reservedSize: 45,
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: Text(
                              value.toInt().toString(),
                              style: TextStyle(
                                color: Color(0xFFC59A9A),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  borderData: FlBorderData(show: false),
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 1500,

                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 1100),
                        FlSpot(1, 1050),
                        FlSpot(2, 1150),
                        FlSpot(3, 1450),
                        FlSpot(4, 1300),
                        FlSpot(5, 1400),
                        FlSpot(6, 900),
                      ],
                      isCurved: true,
                      curveSmoothness: 0.35,
                      color: Colors.transparent,
                      barWidth: 0,
                      dotData: const FlDotData(show: false),

                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF5B6FFF),
                            const Color(0xFF5B6FFF).withOpacity(0.8),
                            const Color(0xFF5B6FFF).withOpacity(0.5),
                            const Color(0xFF5B6FFF).withOpacity(0.3),
                            const Color(0xFF5B6FFF).withOpacity(0.1),
                            Colors.transparent,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMacroRow({
    required Color color,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Container(
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Color(0xFFC59A9A),
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class MacroRingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final strokeWidth = 16.0;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    paint.color = const Color(0xFF6DF43C);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - strokeWidth / 2),
      -math.pi / 2,
      2 * math.pi * 0.25,
      false,
      paint,
    );

    paint.color = const Color(0xFF1D89E4);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - strokeWidth / 2),
      -math.pi / 2 + (2 * math.pi * 0.25),
      2 * math.pi * 0.35,
      false,
      paint,
    );

    paint.color = const Color(0xFFCA8345);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - strokeWidth / 2),
      -math.pi / 2 + (2 * math.pi * 0.60),
      2 * math.pi * 0.40,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
