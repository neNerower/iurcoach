import 'package:flutter/material.dart';

class TrainingPage extends StatefulWidget {
  TrainingPage({Key? key}) : super(key: key);

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> with AutomaticKeepAliveClientMixin<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "TRAINING",
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
