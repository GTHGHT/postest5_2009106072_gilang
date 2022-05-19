import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ForecastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement ForecastPage
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Hour Forecast",
            style: kWeatherTitleTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return HourForecastGrid(
                  imageLocation: "images/clear_white.png",
                  hour: "${12 + index}:00",
                  temp: 27 + index,
                );
              },
              separatorBuilder: (_, __) => VerticalDivider(),
              itemCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}

class HourForecastGrid extends StatelessWidget {
  final String imageLocation;
  final String hour;
  final int temp;

  HourForecastGrid({
    required this.imageLocation,
    required this.hour,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.grey.shade200
            : Colors.grey.shade800,
      ),
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(hour),
          Image.asset(
            imageLocation,
            height: 40,
            width: 40,
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : null,
          ),
          Text("$temp°")
        ],
      ),
    );
  }
}