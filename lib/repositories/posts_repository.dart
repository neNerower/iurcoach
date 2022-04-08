import 'package:dio/dio.dart';
import 'package:iurc_mobile_app/api/api.dart';
import 'package:iurc_mobile_app/pages/news/models/models.dart';

class PostsRepository {
  final _api = Api();

  Future<List<Post>> fetchPosts({int shift = 0, int total = 5}) async {
    Response response = await _api.dio.get(
      "/news",
      queryParameters: {"shift": "$shift", "total": "$total"},
    );

    final data = response.data as List;

    return data.map((json) => Post.fromJson(json)).toList();
  }
}
