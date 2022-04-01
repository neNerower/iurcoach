import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/authentication/authentication.dart';
import 'package:iurc_mobile_app/screens/screens.dart';

class IurcApp extends StatelessWidget {
  const IurcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IURC App",
      home: AuthenticationPage(),
      routes: {
        // '/loading': (context) => LoadingScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => SigninScreen(),
      },
    );
  }
}
