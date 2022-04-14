import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/authentication/authentication.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

import '../login.dart';
import 'widgets/widgets.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardHider(
      child: Scaffold(
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
                  CredentialsForm(),
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
      ),
    );
  }
}
