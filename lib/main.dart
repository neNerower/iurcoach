import 'package:flutter/material.dart';

import 'screens/screens.dart';

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
      title: 'IURCoach',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      initialRoute: _isLoggedIn() ? '/home' : '/signin',
      routes: {
        '/home': (context) => HomeScreen(),
        '/signin': (context) => SigninScreen(),
        '/signup': (context) => SignupScreen(),
      },
    );
  }
}
