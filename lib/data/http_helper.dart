import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather.dart';

class HttpHelper {
  //https://api.openweathermap.org/data/2.5/weather?lat=34.2805&lon=119.2945&appid=efb16db4c5dbd16c4e8c241fa4358cbe
  final String authority = 'api.openweathermap.org';
  final String path = '/data/2.5/weather';
  final String apiKey = 'efb16db4c5dbd16c4e8c241fa4358cbe';

  Future<Weather> getWeather(String location) async
  {
    Map<String, dynamic> parameters = {
      'q': location,
      'appId': apiKey
    };
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);
    return weather;
  }
}