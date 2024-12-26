import 'package:dio/dio.dart';
import 'package:weather_app/views/home/model/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService({required this.dio});
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "338836b2d0c048b5baa234557241712";
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1");
      Map<String, dynamic> jsonData = response.data;
      WeatherModel weatherModel = WeatherModel.fromJson(jsonData);
      return weatherModel;
    } on DioException catch (e) {
      print(e.message);
      // TODO
      throw Exception(e.response?.data["message"] ??
          "There are an error try again later ...");
    }
  }
}
