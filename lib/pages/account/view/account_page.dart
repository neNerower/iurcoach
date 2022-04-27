import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/authentication/authentication.dart';
import 'package:iurc_mobile_app/conf/globals.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

import '../cubit/account_cubit.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: BlocBuilder<AccountCubit, AccountState>(
        builder: (context, state) {
          return state.when(
            data: (user) => Column(
              children: [
                AccountHeader(user: user),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: TrainingCounter(amount: 0),
                ),
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
      child: Column(
        children: [
          InfoItem(
              icon: Icons.calendar_today,
              title: "Дата рождения",
              subtitle:
                  "${user.birthdate.day} ${Strings.monthRNames[user.birthdate.month]} ${user.birthdate.year}"),
          InfoItem(
              icon: Icons.height, title: "Рост", subtitle: "${user.height}"),
          InfoItem(
              icon: Icons.attribution,
              title: "Вес",
              subtitle: "${user.weight}"),
          Divider(indent: 10, endIndent: 10),
          InfoItem(
              icon: Icons.account_box,
              title: "Номер ИСУ",
              subtitle: user.isuID),
          InfoItem(
              icon: Icons.account_balance,
              title: "Подразделение",
              subtitle: "${user.faculty}"),
          InfoItem(
              icon: Icons.group,
              title: "Группа",
              subtitle: "${user.studGroup}"),
          Divider(indent: 10, endIndent: 10),
          InfoItem(
              icon: Icons.phone, title: "Телефон", subtitle: user.phoneNumber),
          InfoItem(
              icon: Icons.alternate_email, title: "VK", subtitle: user.vkID),
          InfoItem(icon: Icons.mail, title: "Почта", subtitle: user.email),
          Divider(height: 20, indent: 10, endIndent: 10),
          InfoItem(icon: Icons.settings, title: "Настройки"),
          InfoItem(icon: Icons.info_outline, title: "О проекте"),
          InfoItem(
            icon: Icons.logout,
            title: "Выход",
            onTap: () => context.read<AuthenticationBloc>().add(
                  AuthenticationLogoutRequested(),
                ),
          ),
        ],
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Function()? onTap;

  const InfoItem({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle = "",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    //   child: Row(children: [
    //     Icon(icon),
    //     SizedBox(width: 10),
    //     Text(title, style: Theme.of(context).textTheme.labelLarge),
    //   ]),
    // );
    return ListTile(
      dense: true,
      leading: Icon(
        icon,
        color: Colors.blue[900],
      ),
      title: Text(
        title,
        style: TextStyle(),
      ),
      subtitle: Text(subtitle),
      visualDensity: VisualDensity(vertical: -4),
      onTap: onTap,
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
