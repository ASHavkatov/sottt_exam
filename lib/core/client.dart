import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "http://192.168.10.214:8888/api/v1"),
  );

  Future<List<dynamic>> fetchHome() async {
    print('bbbbbbbbbbbbbbbbb');
    final response = await dio.get('/real-estates');
    print(response.statusCode);
    if (response.statusCode == 200) {

      return response.data;
    } else {

      throw Exception("Malumotlarni olib kelishda hatolik bor");
    }
  }
}
