import 'package:flutter/material.dart';

class BurgerMenu extends StatelessWidget {
  BurgerMenu({
    Key? key,
  }) : super(key: key);

  final List<IconData> _iconsData = [
    Icons.today,
    Icons.rowing,
    Icons.notifications_active,
    Icons.fiber_new,
    Icons.account_circle,
    Icons.group,
    Icons.settings,
    Icons.info_outline,
    Icons.logout,
  ];

  final _titles = [
    "Календарь",
    "Тренировки",
    "Уведомления",
    "Новости",
    "Профиль",
    "Моя группа",
    "Настройки",
    "О проекте",
    "Выйти",
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: _titles.length + 1,
        itemBuilder: (context, index) {
          return index == 0
              ? _BurgerHeader()
              : ListTile(
                  leading: Icon(_iconsData[index - 1]),
                  title: Text(
                    _titles[index - 1],
                  ),
                  onTap: () {},
                );
        },
      ),
    );
  }
}

class _BurgerHeader extends StatelessWidget {
  const _BurgerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      child: UserAccountsDrawerHeader(
        accountName: Text("Name Account"),
        // This could be ISU number
        accountEmail: Text("email@mail.com"),
        currentAccountPicture: CircleAvatar(
          // TODO: load image from request not from asset
          foregroundImage: AssetImage(
            'assets/images/tmp/avatar.jpg',
          ),
        ),
      ),
    );
  }
}
