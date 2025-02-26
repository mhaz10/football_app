import 'package:dio/dio.dart';
import 'package:football_app/constants.dart';

class DioService {

  static Dio? dio;

  static init() {
    dio = Dio(
        BaseOptions(
      baseUrl: kBaseUrl,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(
      {required String url, Map<String, dynamic>? query}) async {

    dio!.options.headers = {
      'x-rapidapi-key': kApiKey,
      'x-rapidapi-host': 'v3.football.api-sports.io',
    };

    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData(
      {required String url, Map<String, dynamic>? data, Map<String, dynamic>? query}) async {

    dio!.options.headers = {
      'x-rapidapi-key': kApiKey,
      'x-rapidapi-host': 'v3.football.api-sports.io',
    };

    return await dio!.post(
      url,
      data: data,
      queryParameters: query,
    );
  }

}
