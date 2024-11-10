// 4. Weather Report:
// Use Map and List to create a program that stores weather data for different cities (temperature,
// humidity, etc.). Write a function that can retrieve and print weather details using a city name.
void main() {
  Map<String, Map<String, num>> citiesWeatherData = {
    "cairo": {"temp": 23, "hum": 71}
  };
  var cityDetails = weatherDetailOfSelectedCity(
      cityName: "cairo", citiesWeatherData: citiesWeatherData);
  storeWeatherData(
      cityName: "Alex",
      temp: 16,
      hum: 75,
      citiesWeatherData: citiesWeatherData);
  print(cityDetails);
  print(citiesWeatherData);
}

Map<String, num>? weatherDetailOfSelectedCity(
    {required String cityName,
    required Map<String, Map<String, num>> citiesWeatherData}) {
  Map<String, num>? queryCity;
  if (citiesWeatherData.containsKey(cityName)) {
    queryCity = citiesWeatherData[cityName]!;
  }
  return queryCity;
}

void storeWeatherData(
    {required String cityName,
    required num temp,
    required num hum,
    required Map<String, Map<String, num>> citiesWeatherData}) {
  Map<String, Map<String, num>> cityWeather = {
    cityName: {"temp": temp, "hum": hum}
  };
  citiesWeatherData.addEntries(cityWeather.entries);
}
