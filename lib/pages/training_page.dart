import 'package:iurc_mobile_app/conf/imports.dart';

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
    _trainings = Mocks.events;
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
