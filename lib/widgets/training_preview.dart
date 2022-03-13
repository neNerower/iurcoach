import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/models/training_model.dart';

class TrainingPreview extends StatelessWidget {
  const TrainingPreview({Key? key, required this.model}) : super(key: key);

  final TrainingModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Card(
            color: Colors.lightBlue[100],
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "${model.dateTime.day}.${model.dateTime.month}",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${model.place}, ${model.dateTime.hour}:${model.dateTime.minute} ...",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      // Icon(Icons.add),
                      Text("Иду"),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      // Icon(Icons.remove),
                      Text("Пас"),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Идут ${model.visitors.length} человек",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        )
      ],
    );
  }
}
