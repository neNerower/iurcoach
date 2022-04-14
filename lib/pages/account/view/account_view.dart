import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

import '../cubit/account_cubit.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: BlocBuilder<AccountCubit, AccountState>(
        builder: (context, state) {
          return state.when(
            data: (user) => Column(
              children: [
                AccountHeader(user: user),
                TrainingCounter(amount: user.results.length),
                Expanded(child: Container()),
                InfoCard(user: user),
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

class InfoCard extends StatelessWidget {
  final User user;
  const InfoCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[100],
      child: Column(children: [
        InfoItem(icon: Icons.phone, title: user.phoneNumber),
        InfoItem(icon: Icons.mail, title: user.email),
        // InfoItem(icon: icon, title: title)
      ]),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const InfoItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Icon(icon),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
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
