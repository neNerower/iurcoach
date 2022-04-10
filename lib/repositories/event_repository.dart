import 'package:dio/dio.dart';
import 'package:iurc_mobile_app/api/api.dart';
import 'package:iurc_mobile_app/models/models.dart';

class EventRepository {
  Api _api = Api();

  Future<Map<DateTime, Event>> fetchEvents({required DateTime date}) async {
    Response response = await _api.dio.get(
      "/events",
      queryParameters: {"date": "${date.year}-${date.month}-${date.day}"},
    );

    final data = response.data as List;

    return Map.fromIterable(
      data.map((json) => Event.fromJson(json)),
      key: (e) => e.date,
      value: (e) => e,
    );
  }
}
