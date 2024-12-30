import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Sports": 5,
      "Hackethons": 3,
      "Interview": 2,
      "Aptitude": 2,
    };
    final colorList = <Color>[
      Colors.greenAccent,
      Colors.blueAccent,
      Colors.orangeAccent,
      Colors.pinkAccent,
    ];
    return PieChart(
      dataMap: dataMap,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 2,
      colorList: colorList,
      initialAngleInDegree: 1,
      chartType: ChartType.ring,
      ringStrokeWidth: 32,
      centerText: "Students Achievement",
      legendOptions: const LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
    );
  }
}
