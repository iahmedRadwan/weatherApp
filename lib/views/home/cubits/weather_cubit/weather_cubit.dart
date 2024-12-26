import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/home/model/weather_model.dart';

import '../../../../services/weather/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  getWeatherData({required String city}) async {
    emit(WeatherLoadingState());
    try {
      WeatherModel weatherModel =
          await WeatherService(dio: Dio()).getWeather(cityName: city);
      this.weatherModel = weatherModel;
      emit(WeatherSuccessState(weatherModel: weatherModel));
    } catch (e) {
      log(e.toString());
      emit(WeatherFauilerState());
    }
  }
}
