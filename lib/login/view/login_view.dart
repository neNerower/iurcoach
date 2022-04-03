import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/authentication/authentication.dart';

import '../login.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginView({Key? key}) : super(key: key);

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
                _FormFieldWrapper(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Username",
                    ),
                    onSaved: (val) => context
                        .read<LoginBloc>()
                        .add(LoginUsernameChanged(val ?? "")),
                  ),
                ),
                _FormFieldWrapper(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Password",
                    ),
                    onSaved: (val) => context
                        .read<LoginBloc>()
                        .add(LoginPasswordChanged(val ?? "")),
                    obscureText: true,
                    // obscuringCharacter: '~',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text("Войти"),
                    onPressed: () => context.read<LoginBloc>().add(
                          LoginSubmitted(context.read<AuthenticationBloc>()),
                        ),
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

class _FormFieldWrapper extends StatelessWidget {
  final FormField child;

  const _FormFieldWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
