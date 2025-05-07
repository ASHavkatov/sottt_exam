import 'package:sott_exam/core/client.dart';
import 'package:sott_exam/core/data/models/home_model.dart';

class HomeRepository {
  final ApiClient client;

  HomeRepository({required this.client});

  List<HomeModel>? model;

  Future<List<HomeModel>> fetchHome() async {
    print("gggggggggggggggggg");
    final rawhome = await client.fetchHome();
    model = rawhome.map((e) => HomeModel.fromJson(e)).toList();
    return model!;
  }
}
