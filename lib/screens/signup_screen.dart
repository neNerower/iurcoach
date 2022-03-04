import 'package:flutter/material.dart';

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
  DateTime? _birthdate;

  final _formKey = GlobalKey<FormState>();

  void _sendRegistration(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SingleChildScrollView(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
