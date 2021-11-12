import "package:flutter/material.dart";
import 'package:iurc_mobile_app/components/base_button.dart';

import 'components/login_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String _username = "";
  final String _password = "";

  void _login(BuildContext context) {
    // TODO: send login request
    Navigator.pushNamed(context, "/home");
  }

  void _toRegistration(BuildContext context) {
    Navigator.pushNamed(context, "/registration");
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/backgrounds/background_login.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // TODO: check form fields works correct
                  LoginTextField(
                    hintText: "Login",
                  ),
                  LoginTextField(
                    hintText: "Password",
                    isHidden: true,
                  ),
                  BaseButton(
                    label: "Войти",
                    onPressed: () => _login(context),
                  ),
                  Text(
                    "Нет аккаунта?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  BaseButton(
                    label: "Зарегистрироваться",
                    onPressed: () => _toRegistration(context),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
