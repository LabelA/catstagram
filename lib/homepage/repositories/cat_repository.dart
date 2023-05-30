import 'package:catstagram/core/networking/network_client.dart';
import 'package:catstagram/homepage/models/cat.dart';

class CatRepository {
  CatRepository({required this.networkClient});

  final NetworkClient networkClient;

  // This repository looks a bit empty

  Future<List<Cat>> getCats() async {
    final response = await networkClient.client.get<List<dynamic>>(
      'https://api.thecatapi.com/v1/images/search?limit=10',
    );
    final responseData = response.data;
    if (responseData == null) {
      throw Exception('failed to fetch cats');
    }
    final cats = responseData
        .map((cat) => Cat.fromJson(cat as Map<String, dynamic>))
        .toList();
    return cats;
  }
}
