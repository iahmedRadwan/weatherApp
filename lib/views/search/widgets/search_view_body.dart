import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/views/home/cubits/weather_cubit/weather_cubit.dart';
import 'package:weather_app/views/home/model/weather_model.dart';

// ignore: must_be_immutable
class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});
  String cityName = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          onFieldSubmitted: (city) async {
            BlocProvider.of<WeatherCubit>(context).getWeatherData(city: city);
            Navigator.pop(context);
          },
          onChanged: (city) {
            cityName = city;
          },
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Search",
              hintText: "Enter City Name",
              contentPadding: EdgeInsets.all(16),
              suffix: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () async {
                  BlocProvider.of<WeatherCubit>(context)
                      .getWeatherData(city: cityName);

                  Navigator.pop(context);
                },
              )),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
