import 'package:flutter/material.dart';

ThemeData mainTheme() => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        button: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      fontFamily: 'ROBOTO',
    );
