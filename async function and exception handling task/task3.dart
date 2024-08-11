
import 'dart:async';
import 'dart:convert';

Future<void> main() async {
  runZonedGuarded(() async {parseWeatherData(await fetchWeatherData());await displayWeatherInfo();},(error, stack) {
    print(error.toString());
  },);
  try {
    await displayWeatherInfo();
  } on FormatException {
    parseWeatherData(await fetchWeatherData());
  } catch (e) {
    print(e.toString());
  } finally {
    print("end");
  }
}

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 2));
  return '''
  {
    "Weather Data": {
    "location": "london",
    "temperature": 12,
    "isRainy": false
    }
  }
  ''';
}

Future<Map<String, dynamic>> parseWeatherData(String rawData) async {
  var parsedRawData = await jsonDecode(rawData);
  try {
    return parsedRawData as Map<String, dynamic>;
  } catch (e) {
    rethrow;
  }
}
displayWeatherInfo() async {
