import "package:flutter/material.dart";
import "package:fl_chart/fl_chart.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class Chartses extends StatefulWidget {
  @override
  _ChartsesState createState() => _ChartsesState();
}

class _ChartsesState extends State<Chartses> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pacer("The charts"),
          Pacer("Line chart"),
          LineCharts(),
          Pacer(""),
          Pacer(""),
          Pacer(""),
          
        ],
      ),
    );
  }
}

class LineCharts extends StatelessWidget {
  static const  cutOffYValue = 0.0;
  static const _yearTextStyle = TextStyle(fontSize: 25, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 260,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 2),
                FlSpot(1, 1),
                FlSpot(2, 3),
                FlSpot(3, 4),
                // FlSpot.nullSpot,
                FlSpot(3, 6),
                FlSpot(4, 4),
              ],
              isCurved: true,
              barWidth: 2,
              colors: [
                Colors.black,
              ],
              belowBarData: BarAreaData(
                show: true,
                colors: [Colors.lightBlue.withOpacity(0.5)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              aboveBarData: BarAreaData(
                show: true,
                colors: [Colors.red.withOpacity(0.5)],
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              dotData: FlDotData(
                show: true,
              ),
            )
          ],
          minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 5,
              getTextStyles: (val){
                print(val);
                return TextStyle(color: Colors.lightBlue, fontSize: 16);
              },
              getTitles: (val){
                // print("$val from bot");
                switch( val.toInt()){
                  case 0: return "2016";
                  case 1: return "2017";
                  case 2: return "2018";
                  case 3: return "2019";
                  case 4: return "2020";
                  default: return "";
                }

              }

            ),
            leftTitles: SideTitles(
              showTitles: true,
              getTitles: (val){
                print("$val from left");
                return "\$ ${val +100}";
              }
            )
          ),
          axisTitleData: FlAxisTitleData(
            leftTitle: AxisTitle(
              showTitle: true,
              titleText: "Value",
              margin: 10,
            ),
            // rightTitle: AxisTitle(
            //   showTitle: true,
            //   titleText: "Value",
            //   margin: 5,
            // ),
            bottomTitle: AxisTitle(
              showTitle: true,
              margin: 10,
              titleText: "Year",
              textStyle: _yearTextStyle,
              textAlign: TextAlign.right
            )
          ),
          gridData: FlGridData(
            show: true,
            // drawHorizontalLine: true,
            checkToShowHorizontalLine: (double val){
              return val == 1 || val == 3 || val == 3 || val == 4;
            }
          )
        )
      ),
    );
  }
}

