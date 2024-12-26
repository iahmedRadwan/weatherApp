import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/utils/app_router.dart';
import 'package:weather_app/views/home/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/views/home/home_view.dart';
import 'package:weather_app/views/home/model/weather_color_model.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (context) => WeatherCubit(),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: WeatherColorModel.getConditionColor(
                  BlocProvider.of<WeatherCubit>(context).weatherModel?.status),
            ),
            routes: appRouter,
            initialRoute: HomeView.routeName,
          );
        },
      ),
    );
  }
}
