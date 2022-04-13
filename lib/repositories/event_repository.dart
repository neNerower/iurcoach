import 'package:dio/dio.dart';
import 'package:iurc_mobile_app/api/api.dart';
import 'package:iurc_mobile_app/models/models.dart';

class EventRepository {
  Api _api = Api();

  Future<Map<DateTime, Event>> fetchEvents(
      {required DateTime targetMonth}) async {
    Response response = await _api.dio.get(
      "/events",
      queryParameters: {
        "targetMonth": "${targetMonth.year}-${targetMonth.month}-01"
      },
    );

    final data = response.data as List;
    List<Event> eventsList = data.map((json) => Event.fromJson(json)).toList();

    return Map.fromIterable(
      eventsList,
      key: (e) => DateTime(e.dateTime.year, e.dateTime.month, e.dateTime.day),
      value: (e) => e,
    );
  }

  Future<Event> fetchEvent({required int id}) async {
    Response response = await _api.dio.get("/events/$id");

    return Event.fromJson(response.data);
  }

  Future<Event> updateEvent({required Event event}) async {
    Response response = await _api.dio.patch("events/${event.id}");
    
    return Event.fromJson(response.data);
  }
}
