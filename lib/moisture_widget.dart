import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

class MoistureWidget extends StatelessWidget {
  const MoistureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text('Normal - '.toUpperCase(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 7, 100, 175),
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        Text('60%'.toUpperCase(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 7, 100, 175),
                                fontSize: 18,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Wednesday',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color.fromARGB(255, 8, 142, 11)),
                      ),
                      Text(
                        '14th April, 2023',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: Get.width,
              height: 180,
              child: LineChart(
                LineChartData(
                  minY: 0,
                  maxY: 100,
                  borderData: FlBorderData(
                      border: const Border(
                          top: BorderSide.none,
                          left: BorderSide(width: 1, color: Colors.black54),
                          bottom: BorderSide(width: 1, color: Colors.black54))),
                  gridData: const FlGridData(
                      horizontalInterval: 10,
                      show: true,
                      drawVerticalLine: true,
                      drawHorizontalLine: true),
                  titlesData: const FlTitlesData(
                      topTitles: AxisTitles(drawBelowEverything: false),
                      bottomTitles: AxisTitles(drawBelowEverything: false),
                      rightTitles: AxisTitles(drawBelowEverything: true),
                      leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              reservedSize: 40, interval: 10, showTitles: true),
                          axisNameSize: 14,
                          drawBelowEverything: true)),
                  lineBarsData: [
                    LineChartBarData(
                      color: const Color.fromARGB(255, 40, 62, 2),
                      spots: [
                        FlSpot(0, 52),
                        FlSpot(1, 23),
                        FlSpot(2, 55),
                        FlSpot(3, 60),
                        FlSpot(4, 42),
                        FlSpot(5, 76),
                        FlSpot(6, 60),
                      ],
                      isCurved: true,
                      belowBarData: BarAreaData(
                          show: true,
                          gradient: const LinearGradient(colors: [
                            Colors.green,
                            Colors.lightGreen,
                          ])),
                      dotData: const FlDotData(show: false),
                      gradient: const LinearGradient(
                          colors: [Colors.green, Colors.lightGreen]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
