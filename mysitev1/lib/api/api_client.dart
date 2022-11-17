import 'package:http/http.dart';
import '../../utils/AppConstants.dart';
import 'package:http/http.dart' as http;

class ApiClient  {
  final String? main_BaseUrl;
  late Map<String, String> _Main_Headers;
  late String baseUrl;
  ApiClient({required this.main_BaseUrl}) {
    baseUrl = AppConstants.BASE_URL;
    var timeout = const Duration(seconds: 30);
  }

  void updateHeaders(String token) {
    _Main_Headers = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
      try {
        Response response = await get(Uri(path:uri ), headers: headers ?? _Main_Headers);
        return response;
      } catch (e) {
        return Response('internet connection error', 1);
      }

  }

  Future<Response> postData(String uri, Object body) async {
    try {
      Response response = await http.post(
        Uri(path:uri ),
        body: body,
        headers: _Main_Headers,
      );
      return response;
    } catch (e) {
      return Response('internet connection error', 1);
    }
  }
}
