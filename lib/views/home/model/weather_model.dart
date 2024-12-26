import 'package:weather_app/utils/app_images.dart';

class WeatherModel {
  final String cityName;
  final String lastUpdate;
  final double temp;
  final String status;
  final double maxTemp;
  final double minTemp;
  final String imgPath;

  WeatherModel(
      {required this.cityName,
      required this.lastUpdate,
      required this.temp,
      required this.status,
      required this.maxTemp,
      required this.imgPath,
      required this.minTemp});
  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
      cityName: json["location"]["name"],
      lastUpdate: json["current"]["last_updated"],
      temp: json["current"]["temp_c"],
      status: json["current"]["condition"]["text"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      imgPath: getImageStatus(status: json["current"]["condition"]["text"]),
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"]);
}

String getImageStatus({required String status}) {
  if (status.contains("Sunny") || status.contains("Clear")) {
    return AppImages.clear;
  } else if (status.contains("cloudy")) {
    return AppImages.cloudy;
  } else if (status.contains("rain")) {
    return AppImages.rainy;
  } else if (status.contains("snow")) {
    return AppImages.snow;
  } else {
    return AppImages.thunderstorm;
  }
}
