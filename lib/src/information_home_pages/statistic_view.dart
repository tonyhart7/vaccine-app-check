import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:vaccine/src/utils/app_utils.dart';

import 'dump_model.dart';

class StatisticView extends StatelessWidget {
  const StatisticView({Key? key}) : super(key: key);

  static const routeName = '/statistic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kasus Covid-19',
          style: AppStyle.textSubTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 0.9.sw,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Positif : ', style: AppStyle.textBody),
                        Text('4.237.208 Orang', style: AppStyle.textBody),
                      ],
                    ),
                    SizedBox(height: 0.01.sh),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Sembuh : ', style: AppStyle.textBody),
                        Text('4.017.748 Orang', style: AppStyle.textBody),
                      ],
                    ),
                    SizedBox(height: 0.01.sh),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Meninggal : ', style: AppStyle.textBody),
                        Text('143.077 Orang', style: AppStyle.textBody),
                      ],
                    ),
                    SizedBox(height: 0.01.sh),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Update Terakhir: 20-10-2021',
                            style: AppStyle.textBody),
                      ],
                    ),
                    SizedBox(height: 0.1.sh),
                    SfCartesianChart(
                      legend: Legend(
                        isVisible: false,
                        opacity: 0.7,
                        position: LegendPosition.bottom,
                      ),
                      // title: ChartTitle(text: 'Penjualan sabun sunsilk'),
                      plotAreaBorderWidth: 0,
                      primaryXAxis: DateTimeAxis(
                          dateFormat: DateFormat.MMM(),
                          interval: 1,
                          intervalType: DateTimeIntervalType.months,
                          majorGridLines: const MajorGridLines(width: 0),
                          edgeLabelPlacement: EdgeLabelPlacement.shift),
                      primaryYAxis: NumericAxis(
                          labelFormat: '{value}M',
                          // title: AxisTitle(text: '5 YoY Revenue'),
                          interval: 1,
                          axisLine: const AxisLine(width: 0),
                          majorTickLines: const MajorTickLines(size: 0)),
                      series: _getDefaultAreaSeries(),
                      tooltipBehavior: TooltipBehavior(enable: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<AreaSeries<ChartSampleData, DateTime>> _getDefaultAreaSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(x: DateTime(2021, 07, 1), y: 4, secondSeriesYValue: 2.6),
      ChartSampleData(
          x: DateTime(2021, 08, 1), y: 3.0, secondSeriesYValue: 2.8),
      ChartSampleData(
          x: DateTime(2021, 09, 1), y: 3.8, secondSeriesYValue: 2.6),
      ChartSampleData(x: DateTime(2021, 10, 1), y: 3.4, secondSeriesYValue: 3),
      ChartSampleData(x: DateTime(2021, 11, 1), y: 2, secondSeriesYValue: 2),
      ChartSampleData(x: DateTime(2021, 12, 1), y: 1.5, secondSeriesYValue: 3),
    ];
    return <AreaSeries<ChartSampleData, DateTime>>[
      AreaSeries<ChartSampleData, DateTime>(
        dataSource: chartData,
        opacity: 0.7,
        name: 'Zipper A',
        xValueMapper: (ChartSampleData sales, _) => sales.x as DateTime,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
      ),
    ];
  }
}
