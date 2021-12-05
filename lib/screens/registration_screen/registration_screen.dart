import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/components/base_button.dart';

import 'package:iurc_mobile_app/components/form_fields/base_form_field.dart';
import 'package:iurc_mobile_app/components/form_fields/email_field.dart';
import 'package:iurc_mobile_app/components/form_fields/isu_field.dart';
import 'package:iurc_mobile_app/components/form_fields/password_field.dart';
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

  void _sendRegistration(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // TODO: send registration request
    Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Регистрация"),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          // TODO: extract to user_data_form
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                BaseFormField(
                  labelText: "Имя",
                  onSaved: (value) => _firstName = value!,
                ),
                BaseFormField(
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
                PasswordField(
                  labelText: "Пароль",
                  onSaved: (value) => {},
                ),
                BaseButton(
                  label: "Отправить",
                  onPressed: () => _sendRegistration(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
