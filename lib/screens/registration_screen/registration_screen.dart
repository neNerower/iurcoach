import 'package:flutter/material.dart';

import 'package:iurc_mobile_app/components/form_fields/isu_field.dart';
import 'package:iurc_mobile_app/components/form_fields/name_field.dart';
import 'package:iurc_mobile_app/components/form_fields/phone_field.dart';


class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String firstName = "";
  String lastName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Регистрация"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          child: Column(
            children: [
              NameField(
                labelText: "Имя",
                onSaved: (value) {},
              ),
              NameField(
                labelText: "Фамилия",
                onSaved: (value) {},
              ),
              IsuField(
                onSaved: (value) {},
              ),
              PhoneField(
                onSaved: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
