/*
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BottomChart extends StatefulWidget {
  @override
  _BottomChartState createState() => _BottomChartState();
}

class _BottomChartState extends State<BottomChart> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  Map<int, LineChartData> selection;
  int _selected = 0;
  bool showAvg = false;
  @override
  void initState() {
    selection = {0: cnfirmedData(), 1: recvredData(), 2: deadData()};
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1 / 3,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                  color: Color(0xff232d37)),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 0, left: 34.0, top: 24, bottom: 24),
                child: LineChart(
                  selection[_selected],
                ),
              ),
            ),
          ),
          SizedBox(
              width: 300,
              height: 34,
              child: Row(
                children: [

                  FlatButton(
                      onPressed: () {
                        setState(() {
                          _selected = 0;
                        });
                      },
                      child: Text('Confirmed',
                          style: TextStyle(
                              fontSize: 12,
                              color: _selected == 0
                                  ? Colors.white.withOpacity(0.5)
                                  : Colors.white))),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          _selected = 1;
                        });
                      },
                      child: Text('Recovered',
                          style: TextStyle(
                              fontSize: 12,
                              color: _selected == 1
                                  ? Colors.white.withOpacity(0.5)
                                  : Colors.white))),
                  FlatButton(
                      onPressed: () {
                        print("dead");
                        setState(() {
                          _selected = 2;
                        });
                      },
                      child: Text('Dead',
                          style: TextStyle(
                              fontSize: 12,
                              color: _selected == 2
                                  ? Colors.white.withOpacity(0.5)
                                  : Colors.white))),
                ],
              ))
        ],
      ),
    );
  }

  LineChartData cnfirmedData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 1),
            FlSpot(2.6, 2),
            FlSpot(4.9, 3),
            FlSpot(6.8, 4.1),
            FlSpot(8, 1),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
            gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData recvredData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }

 */
/* LineChartData deadData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
            gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }*/ /*

}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomChart(),
    );
  }
}*/

import 'package:bezier_chart/bezier_chart.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/components/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_echarts/flutter_echarts.dart';

class StatisticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () {}),
                            Text(
                              'إحصائيات مرض السكري',
                              style: txt1,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.launch),
                                  Text('ادخال '),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildContainer(
                                hint: 'النوع',
                                onTap: () {},
                                prefixIcon: Icons.keyboard_arrow_down_outlined),
                            buildContainer(
                                hint: 'التاريخ',
                                onTap: () {},
                                prefixIcon: Icons.keyboard_arrow_down_outlined),
                            buildContainer(
                                hint: 'بحث',
                                onTap: () {},
                                prefixIcon: Icons.search),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('السكر التراكمي'),
                          Text(
                            '67',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '67^',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('السكر العشوائي'),
                          Text(
                            ' 350',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '% 67^',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.green[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('الجلوكوز بعد الاكل'),
                          Text(
                            '238',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '^5.8%',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('رسم بياني'),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Text('الكل'),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        sample3(context),
                        // chartContainer(),
                        SizedBox(
                          height: 10,
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.keyboard_arrow_right),
                                Text(
                                    'تقرير شهري عن نسبة السكر حسب القيم المدخلة'),
                                Spacer(),
                                Image.asset('assets/icons/q_icon.png')
                              ],
                            )),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer({String hint, Function onTap, var prefixIcon}) {
    return Container(
      width: 90,
      height: 35,
      child: TextFormField(
        onTap: onTap,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(0.5, 1, 0.5, 1),
          border: OutlineInputBorder(),
          prefixIcon: Icon(
            prefixIcon,
          ),
          hintText: hint,
        ),
      ),
    );
  }

  Widget sample1(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width * 0.9,
        child: BezierChart(
          bezierChartScale: BezierChartScale.CUSTOM,
          xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
          series: const [
            BezierLine(
              data: const [
                DataPoint<double>(value: 10, xAxis: 0),
                DataPoint<double>(value: 130, xAxis: 5),
                DataPoint<double>(value: 50, xAxis: 10),
                DataPoint<double>(value: 150, xAxis: 15),
                DataPoint<double>(value: 75, xAxis: 20),
                DataPoint<double>(value: 0, xAxis: 25),
                DataPoint<double>(value: 5, xAxis: 30),
                DataPoint<double>(value: 45, xAxis: 35),
              ],
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 3.0,
            verticalIndicatorColor: Colors.black26,
            showVerticalIndicator: true,
            backgroundColor: Colors.red,
            snap: false,
          ),
        ),
      ),
    );
  }

  Widget sample2(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          bezierChartScale: BezierChartScale.CUSTOM,
          xAxisCustomValues: const [0, 3, 10, 15, 20, 25, 30, 35],
          series: const [
            BezierLine(
              label: "Custom 1",
              data: const [
                DataPoint<double>(value: 10, xAxis: 0),
                DataPoint<double>(value: 130, xAxis: 5),
                DataPoint<double>(value: 50, xAxis: 10),
                DataPoint<double>(value: 150, xAxis: 15),
                DataPoint<double>(value: 75, xAxis: 20),
                DataPoint<double>(value: 0, xAxis: 25),
                DataPoint<double>(value: 5, xAxis: 30),
                DataPoint<double>(value: 45, xAxis: 35),
              ],
            ),
            BezierLine(
              lineColor: Colors.blue,
              lineStrokeWidth: 2.0,
              label: "Custom 2",
              data: const [
                DataPoint<double>(value: 5, xAxis: 0),
                DataPoint<double>(value: 50, xAxis: 5),
                DataPoint<double>(value: 30, xAxis: 10),
                DataPoint<double>(value: 30, xAxis: 15),
                DataPoint<double>(value: 50, xAxis: 20),
                DataPoint<double>(value: 40, xAxis: 25),
                DataPoint<double>(value: 10, xAxis: 30),
                DataPoint<double>(value: 30, xAxis: 35),
              ],
            ),
            BezierLine(
              lineColor: Colors.black,
              lineStrokeWidth: 2.0,
              label: "Custom 3",
              data: const [
                DataPoint<double>(value: 5, xAxis: 0),
                DataPoint<double>(value: 10, xAxis: 5),
                DataPoint<double>(value: 35, xAxis: 10),
                DataPoint<double>(value: 40, xAxis: 15),
                DataPoint<double>(value: 40, xAxis: 20),
                DataPoint<double>(value: 40, xAxis: 25),
                DataPoint<double>(value: 9, xAxis: 30),
                DataPoint<double>(value: 11, xAxis: 35),
              ],
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 2.0,
            verticalIndicatorColor: Colors.black12,
            showVerticalIndicator: true,
            contentWidth: MediaQuery.of(context).size.width * 2,
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }

  Widget sample5(BuildContext context) {
    final fromDate = DateTime(2012, 11, 22);
    final toDate = DateTime.now();

    final date1 = DateTime.now().subtract(Duration(days: 2));
    final date2 = DateTime.now().subtract(Duration(days: 3));

    final date3 = DateTime.now().subtract(Duration(days: 300));
    final date4 = DateTime.now().subtract(Duration(days: 320));

    final date5 = DateTime.now().subtract(Duration(days: 650));
    final date6 = DateTime.now().subtract(Duration(days: 652));

    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          bezierChartScale: BezierChartScale.YEARLY,
          fromDate: fromDate,
          toDate: toDate,
          selectedDate: toDate,
          series: [
            BezierLine(
              label: "Duty",
              onMissingValue: (dateTime) {
                if (dateTime.year.isEven) {
                  return 20.0;
                }
                return 5.0;
              },
              data: [
                DataPoint<DateTime>(value: 10, xAxis: date1),
                DataPoint<DateTime>(value: 50, xAxis: date2),
                DataPoint<DateTime>(value: 100, xAxis: date3),
                DataPoint<DateTime>(value: 100, xAxis: date4),
                DataPoint<DateTime>(value: 40, xAxis: date5),
                DataPoint<DateTime>(value: 47, xAxis: date6),
              ],
            ),
            BezierLine(
              label: "Flight",
              lineColor: Colors.black26,
              onMissingValue: (dateTime) {
                if (dateTime.month.isEven) {
                  return 10.0;
                }
                return 3.0;
              },
              data: [
                DataPoint<DateTime>(value: 20, xAxis: date1),
                DataPoint<DateTime>(value: 30, xAxis: date2),
                DataPoint<DateTime>(value: 150, xAxis: date3),
                DataPoint<DateTime>(value: 80, xAxis: date4),
                DataPoint<DateTime>(value: 45, xAxis: date5),
                DataPoint<DateTime>(value: 45, xAxis: date6),
              ],
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 3.0,
            verticalIndicatorColor: Colors.black26,
            showVerticalIndicator: true,
            verticalIndicatorFixedPosition: false,
            backgroundGradient: LinearGradient(
              colors: [
                Colors.red[300],
                Colors.red[400],
                Colors.red[400],
                Colors.red[500],
                Colors.red,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            footerHeight: 30.0,
          ),
        ),
      ),
    );
  }

  Widget sample3(BuildContext context) {
    final fromDate = DateTime(2021, 05, 01);
    final toDate = DateTime.now();

    final date1 = DateTime.now().subtract(Duration(days: 2));
    final date2 = DateTime.now().subtract(Duration(days: 3));

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          fromDate: fromDate,
          bezierChartScale: BezierChartScale.WEEKLY,
          toDate: toDate,
          selectedDate: toDate,
          series: [
            BezierLine(
              lineColor: Colors.green,
              label: "Green",
              onMissingValue: (dateTime) {
                if (dateTime.day.isEven) {
                  return 10.0;
                }
                return 5.0;
              },
              data: [
                DataPoint<DateTime>(value: 5, xAxis: date1),
                DataPoint<DateTime>(value: 30, xAxis: date2),
              ],
            ),
            BezierLine(
              lineColor: Colors.red,
              label: "Duty",
              onMissingValue: (dateTime) {
                if (dateTime.day.isEven) {
                  return 10.0;
                }
                return 5.0;
              },
              data: [
                DataPoint<DateTime>(value: 10, xAxis: date1),
                DataPoint<DateTime>(value: 50, xAxis: date2),
              ],
            ),
            BezierLine(
              lineColor: Colors.blue,
              label: "Blue",
              onMissingValue: (dateTime) {
                if (dateTime.day.isEven) {
                  return 10.0;
                }
                return 5.0;
              },
              data: [
                DataPoint<DateTime>(value: 30, xAxis: date1),
                DataPoint<DateTime>(value: 70, xAxis: date2),
              ],
            ),
          ],
          config: BezierChartConfig(
            verticalIndicatorStrokeWidth: 3.0,
            verticalIndicatorColor: Colors.black26,
            showVerticalIndicator: true,
            verticalIndicatorFixedPosition: false,
            yAxisTextStyle: TextStyle(color: Colors.black),
            xAxisTextStyle: TextStyle(color: Colors.black),

            // displayYAxis: true,
            stepsYAxis: 5,
            xLinesColor: Colors.deepOrange,
            startYAxisFromNonZeroValue: true,
            showDataPoints: true,
            updatePositionOnTap: true,
            displayLinesXAxis: true,
            snap: true,
            displayDataPointWhenNoValue: true,
            bubbleIndicatorTitleStyle: TextStyle(color: Colors.deepOrange),
            bubbleIndicatorLabelStyle: TextStyle(color: Colors.deepPurple),

            backgroundGradient: LinearGradient(
              colors: [
                Colors.greenAccent.withOpacity(0.2),
                Colors.red.withOpacity(0.1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            footerHeight: 50.0,
          ),
        ),
      ),
    );
  }

  Widget chartContainer() {
    return Container(
      child: Echarts(
        option: '''
    {
      xAxis: {
        type: 'category',
        data: ['Sat', 'Sun','Mon', 'Tue', 'Wed', 'Thu', 'Fri']
      },
      yAxis: {
        type: 'value'
      },
      series: [{
        data: [900, 932, 1001, 834, 1390, 1130, 1120],
        type: 'line'
      }]
    }
  ''',
      ),
      width: 300,
      height: 250,
    );
  }
}
