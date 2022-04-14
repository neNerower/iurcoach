import 'package:dio/dio.dart';
import 'package:iurc_mobile_app/api/api.dart';
import 'package:iurc_mobile_app/models/models.dart';

class ResultRepository {
  final Api _api = Api();

  Future<List<Result>> fetchResults() async {
    // TODO: Add pagination
    Response response = await _api.dio.get("/results");

    final data = response.data as List;
    return data.map((json) => Result.fromJson(json)).toList();
  }

  Future<Result> fetchResult({required int eventId}) async {
    // TODO: Handle notFoundError
    Response response = await _api.dio.get("/results/$eventId");

    return Result.fromJson(response.data);
  }

  Future<Result> postResult({required Result result}) async {
    if (result.id >= 0) {
      throw Exception("Result already exists !"); // TODO: Add custom exceptions
    }

    // var formData = FormData.fromMap({
    //   "eventId": "${result.eventId}",
    //   "comment": "${result.comment}",
    //   // "files": await result.photos.map((filePath) async => await MultipartFile.fromFile(filePath)).toList()
    //   "file": await MultipartFile.fromFile(result.photos[0])
    // });
    final data = {
      "eventId": "${result.eventId}",
      "comment": "${result.comment}",
    };

    Response response = await _api.dio.post("/results", data: data);

    return Result.fromJson(response.data);
  }
}
