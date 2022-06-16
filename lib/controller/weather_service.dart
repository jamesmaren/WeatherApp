import 'dart:convert';

import 'package:myweatherapp/Model/weather_model.dart';

import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=32.1656&lon=82.9001&appid=18fe3dd5cf52301dfe7d4f7086baaa26");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).temp);
    return Weather.fromJson(body);
  }
}
