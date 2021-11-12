import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen/login_screen.dart';
import 'screens/registration_screen/registration_screen.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  bool _isLoggedIn() {
    // TODO: check the user logged in or not
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IURC App',
      theme: mainTheme(),
      initialRoute: _isLoggedIn() ? '/home' : '/login',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/registration': (context) => RegistrationScreen(),
      },
    );
  }
}
