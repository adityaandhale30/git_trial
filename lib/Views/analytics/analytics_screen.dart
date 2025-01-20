import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pie_chart/pie_chart.dart' as pc;
import 'package:pie_chart/pie_chart.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data for Pie Chart
    Map<String, double> dataMap = {
      "Sports": 5,
      "Hackathons": 3,
      "Interviews": 2,
      "Aptitude": 2,
    };

    // Data for Bar Chart
    List<BarChartGroupData> barData = [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
            toY: 40,
            color: Colors.greenAccent,
            width: 20,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: 30,
            color: Colors.blueAccent,
            width: 20,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            toY: 25,
            color: Colors.orangeAccent,
            width: 20,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            toY: 20,
            color: Colors.pinkAccent,
            width: 20,
          ),
        ],
      ),
    ];

    // Data for Line Chart
    List<FlSpot> lineSpots = [
      const FlSpot(0, 3),
      const FlSpot(1, 4),
      const FlSpot(2, 2),
      const FlSpot(3, 5),
      const FlSpot(4, 3.5),
      const FlSpot(5, 4.5),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('University Analytics'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pie Chart
            const Text(
              'Event Participation',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            pc.PieChart(
              dataMap: dataMap,
              animationDuration: const Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: MediaQuery.of(context).size.width / 2,
              colorList: [
                Colors.greenAccent,
                Colors.blueAccent,
                Colors.orangeAccent,
                Colors.pinkAccent,
              ],
              initialAngleInDegree: 1,
              chartType: ChartType.ring,
              ringStrokeWidth: 32,
              centerText: "Achievements",
              legendOptions: const LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                legendShape: BoxShape.circle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: true,
                showChartValuesInPercentage: true,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
            ),
            const SizedBox(height: 30),

            // Bar Chart
            const Text(
              'Department Contributions (in %)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: BarChart(
                BarChartData(
                  barGroups: barData,
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        interval: 10,
                        getTitlesWidget: (value, meta) => Text(
                          '${value.toInt()}%',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text('CS');
                            case 1:
                              return const Text('Mech');
                            case 2:
                              return const Text('Civil');
                            case 3:
                              return const Text('ECE');
                            default:
                              return const Text('');
                          }
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Line Chart
            const Text(
              'Monthly Event Growth',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: lineSpots,
                      isCurved: true,
                   
                      barWidth: 4,
                      belowBarData: BarAreaData(
                        show: true,
                      
                      ),
                    ),
                  ],
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) =>
                            Text('${value.toInt()}'),
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) =>
                            Text('M${value.toInt() + 1}'),
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: true),
                  gridData: FlGridData(show: true),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
