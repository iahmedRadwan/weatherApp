import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/weather_cubit/weather_cubit.dart';
import '../model/weather_color_model.dart';
import '../model/weather_model.dart';
import 'city_info_section.dart';
import 'weather_info_section.dart';
import 'weather_status_section.dart';

class WeatherInfoData extends StatelessWidget {
  const WeatherInfoData({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            WeatherColorModel.getConditionColor(
                BlocProvider.of<WeatherCubit>(context).weatherModel?.status),
            WeatherColorModel.getConditionColor(
                    BlocProvider.of<WeatherCubit>(context).weatherModel?.status)
                .shade100,
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CityInfoSection(
            weatherModel: weatherModel,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: WeatherInfoSection(
              weatherModel: weatherModel,
            ),
          ),
          WeatherStatusSection(
            weatherModel: weatherModel,
          ),
        ],
      ),
    );
  }
}
