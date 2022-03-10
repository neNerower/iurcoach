import 'package:iurc_mobile_app/models/models.dart';

class EventMocks {
  EventMocks._();

  static List<TrainingModel> events = [
    TrainingModel(
      dateTime: DateTime(2022, 3, 5, 18, 00),
      place: "Strela",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      dateTime: DateTime(2022, 3, 7, 16, 30),
      place: "Lomo",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),

    TrainingModel(
      dateTime: DateTime(2022, 3, 9, 18, 00),
      place: "Strela",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      dateTime: DateTime(2022, 3, 10, 16, 30),
      place: "Strela",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),

    TrainingModel(
      dateTime: DateTime(2022, 3, 11, 18, 00),
      place: "Lomo",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      dateTime: DateTime(2022, 3, 15, 16, 30),
      place: "Lomo",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),
    
    TrainingModel(
      dateTime: DateTime(2022, 3, 16, 18, 00),
      place: "Lomo",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      dateTime: DateTime(2022, 3, 17, 16, 30),
      place: "Lomo",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),
  ];
}