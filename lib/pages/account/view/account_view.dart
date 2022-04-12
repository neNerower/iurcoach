import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

import '../cubit/account_cubit.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: BlocBuilder<AccountCubit, AccountState>(
        builder: (context, state) {
          return state.when(
            (user) => Column(
              children: [
                AccountHeader(user: user),
                // TrainingCounter(amount: model.trainings.length),
              ],
            ),
            initial: () => Center(child: CircularProgressIndicator()),
            failure: (message) =>
                Center(child: Text(message ?? "Account loading failed")),
          );
        },
      ),
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
