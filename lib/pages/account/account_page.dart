import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  String get title => "Account";

  AccountPage({
    Key? key,
    // required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      // child: Column(
      //   children: [
      //     AccountHeader(model: model),
      //     TrainingCounter(amount: model.trainings.length),
      //   ],
      // ),
    );
  }
}

class TrainingCounter extends StatelessWidget {
  final int amount;

  const TrainingCounter({
    Key? key,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$amount",
          style: TextStyle(
            color: Colors.blue[900],
            fontSize: 70,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "тренировок за месяц",
          style: TextStyle(
            color: Colors.blue[900],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
