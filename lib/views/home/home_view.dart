import 'package:flutter/material.dart';
import 'package:weather_app/views/search/search_view.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = "home_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SearchView.routeName);
              },
              icon: Icon(
                Icons.search,
                size: 26,
              ))
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
