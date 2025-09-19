import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sandbox/models/weather_model.dart';
import 'package:sandbox/widgets/title/h1.dart';
import 'package:sandbox/widgets/weather/weather_city_info.dart';
import 'package:sandbox/widgets/weather/weather_search.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherModel? weather;
  bool isLoading = false;
  String? errorMessage;

  Future<void> fetchWeatherForCity(String city) async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });
    var response = await http.get(
      Uri.parse(
        "https://api.weatherapi.com/v1/current.json?key=5fcab2f5e082483ea1f123033251909&q=$city",
      ),
    );

    Map<String, dynamic> jsonMap = jsonDecode(response.body);

    if (jsonMap["error"] != null) {
      if (jsonMap["error"]["message"] != null) {
        setState(() {
          isLoading = false;
          errorMessage = jsonMap["error"]["message"];
        });
      }
    } else {
      setState(() {
        weather = WeatherModel.froJson(jsonMap);
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather")),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WeatherSearch(
                  onSearchSubmit: (city) {
                    fetchWeatherForCity(city);
                  },
                ),
                SizedBox(height: 20),
                if (isLoading)
                  Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: Colors.red,
                    ),
                  )
                else if (errorMessage != null)
                  Text(errorMessage!, style: TextStyle(color: Colors.red))
                else if (weather is WeatherModel)
                  WeatherCityInfo(weather: weather!)
                else
                  H1("Enter a city name and search"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
