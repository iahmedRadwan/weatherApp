part of 'weather_cubit.dart';

abstract class WeatherState {}

final class WeatherInitialState extends WeatherState {}

final class WeatherLoadingState extends WeatherState {}

final class WeatherSuccessState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSuccessState({required this.weatherModel});
}

final class WeatherFauilerState extends WeatherState {}
