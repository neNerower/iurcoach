import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/models/training_model.dart';
import 'package:iurc_mobile_app/widgets/training_preview.dart';

class TrainingPage extends StatefulWidget {
  TrainingPage({Key? key}) : super(key: key);

  String get title => "Training";

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  late List<TrainingModel> _trainings;

  @override
  void initState() {
    super.initState();
    // TODO: create lasy load list veiw instead of this
    _trainings = [
      TrainingModel(
        dateTime: DateTime(2022, 3, 10, 18, 00),
        place: "Strela",
        plan: ["Run 30`", "RP3 20x40", "Gym"],
      ),
      TrainingModel(
        dateTime: DateTime(2022, 3, 11, 16, 30),
        place: "Lomo",
        plan: ["Concept 6km", "2x30`", "OFP"],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: _trainings.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TrainingPreview(model: _trainings[index]),
          );
        },
      ),
    );
  }
}
