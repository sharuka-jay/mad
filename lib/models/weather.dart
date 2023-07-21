class WeatherModel {
  final String mainWeather;
  final String description;
  final double temperature;

  WeatherModel({
    required this.mainWeather,
    required this.description,
    required this.temperature,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      mainWeather: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      temperature: json['main']['temp'],
    );
  }
}
