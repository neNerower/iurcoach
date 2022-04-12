import 'package:dio/dio.dart';
import 'package:iurc_mobile_app/api/api.dart';
import 'package:iurc_mobile_app/models/models.dart';

class ResultRepository {
  final Api _api = Api();

  Future<List<Result>> fetchResults() async {
    Response response = await _api.dio.get("/results");

    final data = response.data as List;
    return data.map((json) => Result.fromJson(json)).toList();
  }

  Future<Result> fetchResult({required String eventId}) async {
    Response response = await _api.dio.get("/results/$eventId");

    return Result.fromJson(response.data);
  }

  Future<Result> postResult({required Result result}) async {
    if (result.id >= 0) {
      throw Exception("Result already exists !"); // TODO: Add custom exceptions
    }

    var formData = FormData.fromMap({
      "eventId": "${result.eventId}",
      "comment": "${result.comment}",
      "files": result.photos.map((file) => MultipartFile.fromFile(file)).toList()
    });

    Response response = await _api.dio.post("/results", data: formData);

    return Result.fromJson(response.data);
  }
}