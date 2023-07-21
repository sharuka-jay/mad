import 'package:flutter/material.dart';
import 'package:weatherapp/models/weather.dart'; // Assuming you already have the WeatherModel class defined in weather_model.dart.

class WeatherDetailsScreen extends StatelessWidget {
  final WeatherModel weatherData;

  WeatherDetailsScreen({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Weather: ${weatherData.mainWeather}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'Description: ${weatherData.description}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Temperature: ${weatherData.temperature.toStringAsFixed(1)} °C',
              style: TextStyle(fontSize: 18),
            ),
            //
          ],
        ),
      ),
    );
  }
}
