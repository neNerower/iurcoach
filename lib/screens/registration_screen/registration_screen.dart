import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/components/form_fields/email_field.dart';

import 'package:iurc_mobile_app/components/form_fields/isu_field.dart';
import 'package:iurc_mobile_app/components/form_fields/name_field.dart';
import 'package:iurc_mobile_app/components/form_fields/phone_field.dart';
import 'package:iurc_mobile_app/components/form_fields/vk_id_field.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String _firstName = "";
  String _lastName = "";
  String _isuNumber = "";
  String _phoneNumber = "";
  String _vkIdNumber = "";
  String _email = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Регистрация"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              NameField(
                labelText: "Имя",
                onSaved: (value) => _firstName = value!,
              ),
              NameField(
                labelText: "Фамилия",
                onSaved: (value) => _lastName = value!,
              ),
              IsuField(
                onSaved: (value) => _isuNumber = value!,
              ),
              PhoneField(
                onSaved: (value) => _phoneNumber = value!,
              ),
              VkIdField(
                onSaved: (value) => _vkIdNumber = value!,
              ),
              EmailField(
                onSaved: (value) => _email = value!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
