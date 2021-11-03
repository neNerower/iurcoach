import "package:flutter/material.dart";
import 'package:iurc_mobile_app/components/base_button.dart';

import 'components/login_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void _login(BuildContext context) {
    // TODO: add login function
    Navigator.pushNamed(context, "/home");
  }

  void _toRegistration(BuildContext context) {
    Navigator.pushNamed(context, "/registration");
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
          )
        ],
      ),
    );
  }
}
