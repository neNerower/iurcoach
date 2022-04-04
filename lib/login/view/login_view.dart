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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Column(
                  children: [
                    _FormFieldWrapper(
                      child: BlocBuilder<LoginBloc, LoginState>(
                        buildWhen: (previous, current) =>
                            previous.username != current.username,
                        builder: (context, state) {
                          return TextFormField(
                            decoration: InputDecoration(
                              hintText: "Username",
                              // errorText: !state.username.validate()
                              //     ? "Username format error"
                              //     : null,
                            ),
                            onChanged: (val) => context
                                .read<LoginBloc>()
                                .add(LoginUsernameChanged(val)),
                          );
                        },
                      ),
                    ),
                    _FormFieldWrapper(
                      child: BlocBuilder<LoginBloc, LoginState>(
                        buildWhen: (previous, current) =>
                            previous.password != current.password,
                        builder: (context, state) {
                          return TextFormField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              // errorText: !state.password.validate()
                              //     ? "Password format error"
                              //     : null,
                            ),
                            onChanged: (val) => context
                                .read<LoginBloc>()
                                .add(LoginPasswordChanged(val)),
                            obscureText: true,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        switch (state.status) {
                          case LoginStatus.submissionFailure:
                            return Text("Some error");
                          case LoginStatus.submissionInProgress:
                            return CircularProgressIndicator();

                          default:
                            return Container();
                        }
                      },
                    ),
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
  final Widget child;

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
