import 'package:iurc_mobile_app/models/models.dart';

class Mocks {
  Mocks._();

  static List<TrainingModel> events = [
    TrainingModel(
      id: 0,
      dateTime: DateTime(2022, 3, 5, 18, 00),
      place: "Strela",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      id: 1,
      dateTime: DateTime(2022, 3, 7, 16, 30),
      place: "Lomo",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),
    TrainingModel(
      id:2,
      dateTime: DateTime(2022, 3, 9, 18, 00),
      place: "Strela",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      id: 3,
      dateTime: DateTime(2022, 3, 10, 16, 30),
      place: "Strela",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),
    TrainingModel(
      id: 4,
      dateTime: DateTime(2022, 3, 11, 18, 00),
      place: "Lomo",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      id: 5,
      dateTime: DateTime(2022, 3, 15, 16, 30),
      place: "Lomo",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),
    TrainingModel(
      id: 6,
      dateTime: DateTime(2022, 3, 16, 18, 00),
      place: "Lomo",
      plan: ["Run 30`", "RP3 20x40", "Gym"],
    ),
    TrainingModel(
      id: 7,
      dateTime: DateTime(2022, 3, 17, 16, 30),
      place: "Lomo",
      plan: ["Concept 6km", "2x30`", "OFP"],
    ),
  ];

  static UserModel appUser = UserModel(
    firstName: "Ne",
    lastName: "Nerower",
    birthdate: DateTime(2000, 1, 1),
    group: "Мужская сборная",
    isuID: "123456",
    vkID: "vk.com/nerower",
    phoneNumber: "+79991110022",
    email: "nerower@mail.com",
    photoURL: "https://cdn.vox-cdn.com/thumbor/KmUSGKjWbKxOCahy4yZkw17HZ64=/0x0:2370x1574/920x613/filters:focal(996x598:1374x976):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/68870438/Screen_Shot_2020_07_21_at_9.38.25_AM.0.png",
    trainings: [0, 2, 3, 4],
  );
}
