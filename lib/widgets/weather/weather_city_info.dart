import 'package:flutter/material.dart';
import 'package:sandbox/models/weather_model.dart';
import 'package:sandbox/widgets/title/h1.dart';

class WeatherCityInfo extends StatelessWidget {
  const WeatherCityInfo({super.key, required this.weather});

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(20),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Weather in (${weather.locationName}, ${weather.locationCountry})",
          ),
          SizedBox(height: 4),
          H1("${weather.tempCelcius.toString()}°C"),
          SizedBox(height: 4),
          Row(
            children: [
              Image.network(
                "https:${weather.conditionIcon}",
                height: 30,
                width: 30,
              ),
              SizedBox(width: 4),
              Text(weather.conditionText),
            ],
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
