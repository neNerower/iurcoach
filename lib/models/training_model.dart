class TrainingModel {
  DateTime dateTime;
  String place;
  String? trainingType;

  List<String> plan = [];
  List<int> visitors = [];

  TrainingModel({
    required this.dateTime,
    required this.place,
    this.trainingType,
    required this.plan,
  });
}
