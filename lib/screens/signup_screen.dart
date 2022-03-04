import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/widgets/date_form_field.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String _firstName = "";
  String _lastName = "";
  String _isuID = "";
  String _vkId = "";
  String _phoneNumber = "";
  String _email = "";
  String _password = "";
  DateTime? _birthdate;

  final _formKey = GlobalKey<FormState>();

  void _signup(BuildContext context) {
    // TODO: send registration request
    Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Регистрация"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Имя",
                  ),
                  onSaved: (val) => _firstName = val ?? "",
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Фамилия",
                  ),
                  onSaved: (val) => _lastName = val ?? "",
                ),
                // DateFormField(
                //   onSaved: (val) => _birthdate = val,
                // ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Номер ИСУ",
                  ),
                  onSaved: (val) => _isuID = val ?? "",
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "ID в «ВКонтакте»",
                  ),
                  onSaved: (val) => _vkId = val ?? "",
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Номер телефона",
                  ),
                  onSaved: (val) => _phoneNumber = val ?? "",
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                  onSaved: (val) => _email = val ?? "",
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Пароль"
                  ),
                  onSaved: (val) => _password = val ?? "",
                  obscureText: true,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Подтвердить пароль"
                  ),
                  obscureText: true,
                ),

                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Сохранить"),
                    onPressed: () => _signup(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
