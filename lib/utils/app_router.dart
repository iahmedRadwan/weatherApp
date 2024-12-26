import 'package:flutter/material.dart';
import 'package:weather_app/views/home/home_view.dart';
import 'package:weather_app/views/search/search_view.dart';

Map<String, WidgetBuilder> appRouter = {
  HomeView.routeName: (context) => HomeView(),
  SearchView.routeName: (context) => const SearchView(),
};
