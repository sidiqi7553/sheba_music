import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


class ChartReport extends StatefulWidget {
  const ChartReport({Key? key}) : super(key: key);

  @override
  _ChartReportState createState() => _ChartReportState();
}

class _ChartReportState extends State<ChartReport> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 0.98,
          child: LineChart(
            mainData(),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = AppText(text: "",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 1:
        text =AppText(text: "Mon",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 2:
        text = AppText(text: "Tue",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 3:
        text = AppText(text: "Wed",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 4:
        text =AppText(text: "Thu",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 5:
        text = AppText(text: "Fri",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 6:
        text = AppText(text: "Sat",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 7:
        text = AppText(text: "Sun",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      case 8:
        text = AppText(text: "",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
      default:
        text = AppText(text: "",SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.w400,);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  List fff(){
    return [

    ];
  }
  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Color(0xff6F6F6F),
              tooltipBorder: BorderSide(color: grey),
              // getTooltipItems:
            )
      ),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: false,
        verticalInterval: 5,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          drawBehindEverything: true,
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 60,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: false,
      ),
      minX: 0,
      maxX: 8,
      minY: 0,
      maxY: 13000,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 7000),
            FlSpot(1, 8000),
            FlSpot(2, 9000),
            FlSpot(3, 12000),
            FlSpot(4, 7000),
            FlSpot(5, 9000),
            FlSpot(6, 5000),
            FlSpot(7, 8000),
            FlSpot(8, 12000),
          ],
          isCurved: true,
          color: Colors.white,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            spotsLine: BarAreaSpotsLine(show: true,
                flLineStyle: FlLine(color: Colors.white.withOpacity(0.25), strokeWidth: 1)),
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
               primary,
                primary.withOpacity(0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}