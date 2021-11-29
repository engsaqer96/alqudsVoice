import 'package:dio/dio.dart';

class ApiHelper {
  ApiHelper._();
  static ApiHelper apiHelper = ApiHelper._();
  Dio dio = Dio();
  Future<String> getStreamLink() async {
    String url = '';
    Response response = await dio.get(url);
    return response.data;
  }

  Future<String> getCallNumber() async {
    String url = '';
    Response response = await dio.get(url);
    return response.data;
  }
}
