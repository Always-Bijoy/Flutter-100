import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = 'f7a81815992019be3f60d255f06a5164';
const apiKeyUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityLocation(String cityName) async{
    var url = '$apiKeyUrl?q=$cityName&appid=$apiKey&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url);

    var weatherData =await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    //Location class
    Location location = Location();
    await location.getCurrentLocation();

    //network class
    NetworkHelper networkHelper = NetworkHelper(
        '$apiKeyUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩   ';
    } else if (condition < 400) {
      return '🌧`  ';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
