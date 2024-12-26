import 'package:flutter/material.dart';
import 'package:weather_app/views/home/model/weather_model.dart';

class CityInfoSection extends StatelessWidget {
  const CityInfoSection({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weatherModel.cityName,
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          "Updated At : ${weatherModel.lastUpdate.split(" ")[1]}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
