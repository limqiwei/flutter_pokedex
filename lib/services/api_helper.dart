import 'package:http/http.dart' as http;

class ApiHelper {

  static const String serverUrl = "http://192.168.1.9:3000";



  static String getAPIUrl(String path) {
    return "$serverUrl/$path";
  }

  static Future<http.Response> loadStudent() {
    String url  = ApiHelper.getAPIUrl("student/2");
    return http.get(Uri.parse(url));

  }

  static Future<http.Response> loadData(String path) {
    return http.get(Uri.parse(""));
  }


  static Future<http.Response> loadPokemons({int offset = 0}) {
    int limit = 100;
    return http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon/?offset=$offset&limit=$limit"));
  }
}