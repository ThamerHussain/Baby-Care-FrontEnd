import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';

class RatingChart extends StatelessWidget {
  final List<RateSeries> data;

  final double width;

  final double height;

  const RatingChart(
      {Key? key, required this.data, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<RateSeries, String>> series = [
      charts.Series(
          id: "Ratings",
          data: data,
          domainFn: (RateSeries series, _) => series.starsNumber,
          measureFn: (RateSeries series, _) => series.count,
          colorFn: (RateSeries series, _) => series.barColor)
    ];
    return Obx((){return Container(
      color: blackColor.value,
      height: height,
      width: width,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                color: blackColor.value,
                child: charts.BarChart(
                  series,
                  animate: true,
                  vertical: false,
                  animationDuration: const Duration(seconds: 2),
                  defaultRenderer: charts.BarRendererConfig(
                    cornerStrategy: const charts.ConstCornerStrategy(30),
                  ),
                  domainAxis: charts.OrdinalAxisSpec(
                      renderSpec: charts.SmallTickRendererSpec(
                          labelStyle: charts.TextStyleSpec(
                              fontSize: 13,
                              fontFamily: arabicFont700,
                              color: chartWhite.value),
                          lineStyle: const charts.LineStyleSpec(
                              color: charts.MaterialPalette.transparent))),
                  primaryMeasureAxis: const charts.NumericAxisSpec(
                    renderSpec: charts.GridlineRendererSpec(
                        labelStyle: charts.TextStyleSpec(
                            fontSize: 18, color: charts.MaterialPalette.transparent),
                        lineStyle: charts.LineStyleSpec(
                            color: charts.MaterialPalette.transparent)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );});
  }
}
