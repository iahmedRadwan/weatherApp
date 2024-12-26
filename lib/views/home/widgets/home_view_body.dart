import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/home/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/views/home/widgets/weather_info_data.dart';

import 'defult_screen_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return WeatherItemBuilder();
  }
}

class WeatherItemBuilder extends StatelessWidget {
  const WeatherItemBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
      if (state is WeatherInitialState) {
        return WeatherNoInfoData();
      } else if (state is WeatherSuccessState) {
        return WeatherInfoData(weatherModel: state.weatherModel);
      } else if (state is WeatherLoadingState) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Center(
          child: Text("Opps, there was an error"),
        );
      }
    });
  }
}
