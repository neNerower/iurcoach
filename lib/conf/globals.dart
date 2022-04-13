import 'package:flutter/rendering.dart';

class Globals {
  // Localhost
  static const String baseUrl = "http://10.0.2.2:3002";
}

class Strings {
  Strings._();

  static const List<String> dowNames = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"];
  static const List<String> monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"];
  static const List<String> monthRNames = ["Января", "Февраля", "Марта", "Апреля", "Мая", "Июня", "Июля", "Августа", "Сентября", "Октября", "Ноября", "Декабря"];

  static const Map<String, String> eventTypes = {"cardio": "Кардио", "speed": "Скоростная", "power": "Силовая", "competition": "Соревнования"};
}

class Palette {
  static const Color lightLightBlue = Color.fromRGBO(233, 249, 255, 1);
  static const Color lightBlue = Color.fromRGBO(65, 182, 230, 1);
  static const Color blue = Color.fromRGBO(67, 116, 243, 1);
  static const Color darkBlue = Color.fromRGBO(18, 81, 158, 1);
}