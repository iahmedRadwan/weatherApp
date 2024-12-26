import 'package:flutter/material.dart';

import '../../../utils/color_to_material_color.dart';

class WeatherColorModel {
  static MaterialColor getConditionColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }
    switch (condition) {
      case "Sunny":
      case "Clear":
        return Colors.amber;
      case "Partly cloudy":
        return ColorConverter.convertToMaterialColor(Colors.blue[200]!);
      case "Cloudy":
        return ColorConverter.convertToMaterialColor(Colors.grey[400]!);
      case "Overcast":
        return Colors.grey;
      case "Mist":
        return Colors.blueGrey;
      case "Patchy rain possible":
      case "Light rain":
      case "Patchy light rain":
        return Colors.lightBlue;
      case "Heavy rain":
      case "Moderate rain":
      case "Moderate rain at times":
        return Colors.blue;
      case "Patchy snow possible":
      case "Patchy light snow":
      case "Light snow":
        return ColorConverter.convertToMaterialColor(Colors.white);
      case "Blizzard":
        return ColorConverter.convertToMaterialColor(Colors.blueGrey[900]!);
      case "Fog":
        return ColorConverter.convertToMaterialColor(Colors.grey[500]!);
      case "Freezing fog":
        return ColorConverter.convertToMaterialColor(Colors.grey[600]!);
      case "Patchy light drizzle":
      case "Light drizzle":
        return Colors.lightGreen;
      case "Freezing drizzle":
      case "Heavy freezing drizzle":
        return ColorConverter.convertToMaterialColor(Colors.blue[200]!);
      case "Patchy sleet possible":
      case "Light sleet":
      case "Moderate or heavy sleet":
      case "Light sleet showers":
        return ColorConverter.convertToMaterialColor(Colors.blueAccent);
      case "Heavy rain at times":
      case "Torrential rain shower":
        return Colors.red;
      case "Ice pellets":
        return Colors.brown;
      case "Light snow showers":
      case "Moderate or heavy snow showers":
        return ColorConverter.convertToMaterialColor(Colors.grey[300]!);
      case "Patchy light rain with thunder":
      case "Moderate or heavy rain with thunder":
        return Colors.deepOrange;
      case "Patchy light snow with thunder":
      case "Moderate or heavy snow with thunder":
        return ColorConverter.convertToMaterialColor(Colors.blueGrey[300]!);
      // Add other conditions as necessary
      default:
        return Colors.blueGrey; // Default color
    }
  }
}
