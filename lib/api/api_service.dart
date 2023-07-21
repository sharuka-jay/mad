import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weatherapp/models/weather.dart';

class ApiService {
  final String apiKey;
  ApiService({required this.apiKey});

  Future<WeatherModel> getWeather(double lat, double lon) async {
    final response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey',
      ),
    );

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error!');
    }
  }
}
