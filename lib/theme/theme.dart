import 'package:flutter/material.dart';

ThemeData mainTheme() => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      
      textTheme: TextTheme(
        button: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          height: 1,
          color: Color(0xFF12519E),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(),
        isDense: true,
        filled: false,
        contentPadding: EdgeInsets.only(left: 3, top: 7, right: 3, bottom: 3),
        hintStyle: TextStyle(
          color: Color(0xffb8b8b8),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),

      fontFamily: 'ROBOTO',
    );
