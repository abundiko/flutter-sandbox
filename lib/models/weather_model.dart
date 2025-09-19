class WeatherModel {
  late double tempCelcius;
  late String conditionText, conditionIcon, locationName, locationCountry;

  WeatherModel({
    required this.tempCelcius,
    required this.conditionText,
    required this.conditionIcon,
  });

  WeatherModel.froJson(dynamic json) {
    tempCelcius = json["current"]["temp_c"];
    conditionText = json["current"]["condition"]["text"];
    conditionIcon = json["current"]["condition"]["icon"];
    locationName = json["location"]["name"];
    locationCountry = json["location"]["country"];
  }
}
