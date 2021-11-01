import "package:flutter/material.dart";

import 'login_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          // SvgPicture.asset("assets/images/background_login.svg"),
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
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LoginTextField(
                  // labelText: "Login",
                  hintText: "Login",
                ),
                LoginTextField(
                  // labelText: "Password",
                  hintText: "Password",
                  isHidden: true,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
