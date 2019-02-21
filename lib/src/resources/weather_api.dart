import 'package:http/http.dart' show Client;
import 'dart:async';
import 'dart:convert';


class WeatherApi {
  final String apiKey = 'abda40d13110bcf3b6af4c0f5626dcf3';
  final Client c;

  WeatherApi(): c = Client();


  Future<Map> getWeather(String city) async{
    String apiUrl = 'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=imperial';

    final response = await c.get(apiUrl);
    return json.decode(response.body);
  }

}

