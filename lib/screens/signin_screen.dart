import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  String _username = "";
  String _password = "";

  final _formKey = GlobalKey<FormState>();

  void _login(BuildContext context) {
    // TODO: send login request

    setState(() {
      _formKey.currentState?.save();
    });

    // Used just in debug mode
    // To check processing data before API supported
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(_username),
        content: Text(_password),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false),
            child: Text("Yes"),
          ),
        ],
      ),
    );

    // Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
  }

  void _toRegistration(BuildContext context) {
    Navigator.pushNamed(context, "/registration");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[900],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _wrapFormField(
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Username",
                    ),
                    onSaved: (val) => _username = val ?? "",
                  ),
                ),
                _wrapFormField(
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Password",
                    ),
                    onSaved: (val) => _password = val ?? "",
                    obscureText: true,
                    obscuringCharacter: '~',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Войти"),
                    onPressed: () => _login(context),
                  ),
                ),
                const Text(
                  "Нет аккаунта?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Регистрация"),
                    onPressed: () => _toRegistration(context),
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

// Widget _getFormField({
//   String? labelText,
//   String? hintText,
// }) {
//   return TextFormField(
//     decoration: InputDecoration(
//       labelText: labelText,
//       hintText: hintText,
//     ),
//   );
// }

Widget _wrapFormField(FormField child) {
  return Container(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 3),
    margin: const EdgeInsets.only(bottom: 10),
    height: 40,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    child: child,
  );
}
