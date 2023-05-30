import 'package:dio/dio.dart';

class NetworkClient {
  // TODO(workshopdeveloper): Add your api key here
  final client = Dio(
    BaseOptions(
      headers: {'x-api-key': ''},
    ),
  );
}
