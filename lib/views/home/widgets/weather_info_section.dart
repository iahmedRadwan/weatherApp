import 'package:flutter/material.dart';
import 'package:weather_app/views/home/model/weather_model.dart';

class WeatherInfoSection extends StatelessWidget {
  const WeatherInfoSection({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          weatherModel.imgPath,
          width: 45,
        ),
        Text(
          "${weatherModel.temp}",
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            Text(
              "Max Temp : ${weatherModel.maxTemp.round()}",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Min Temp : ${weatherModel.minTemp.round()}",
              style: TextStyle(color: Colors.black),
            ),
          ],
        )
      ],
    );
  }
}
