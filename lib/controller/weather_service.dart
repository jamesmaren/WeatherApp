import 'package:http/http.dart' as http;
import 'package:myweatherapp/Model/weather_model.dart';

class RemoteService2 {
  Future<Weather> getWeather() async {
    var client = http.Client();
    var uri = Uri.parse(
        //'https://api.openweathermap.org/data/2.5/weather?lat=32.1656&lon=82.9001&appid=18fe3dd5cf52301dfe7d4f7086baaa26'
        'https://api.openweathermap.org/data/2.5/weather?lat=32.1656&lon=82.9001&appid=18fe3dd5cf52301dfe7d4f7086baaa26&units=metric');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return weatherFromJson(json);
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
