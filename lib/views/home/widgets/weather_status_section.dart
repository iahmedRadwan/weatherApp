import 'package:flutter/material.dart';
import 'package:weather_app/views/home/model/weather_model.dart';

class WeatherStatusSection extends StatelessWidget {
  const WeatherStatusSection({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      weatherModel.status,
      style: TextStyle(
          color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}
