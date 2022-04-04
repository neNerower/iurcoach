import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../login.dart';
import 'form_field_wrapper.dart';

class CredentialsForm extends StatelessWidget {
  const CredentialsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormFieldWrapper(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Username",
            ),
            onChanged: (val) =>
                context.read<LoginBloc>().add(LoginUsernameChanged(val)),
          ),
        ),
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.username != current.username,
          builder: (context, state) {
            return Text(
              state.username.validate(),
              style: TextStyle(color: Colors.red),
            );
          },
        ),
        FormFieldWrapper(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
            ),
            onChanged: (val) =>
                context.read<LoginBloc>().add(LoginPasswordChanged(val)),
            obscureText: true,
          ),
        ),
        BlocBuilder<LoginBloc, LoginState>(
          buildWhen: (previous, current) =>
              previous.password != current.password,
          builder: (context, state) {
            return Text(
              state.password.validate(),
              style: TextStyle(color: Colors.red),
            );
          },
        ),
      ],
    );
  }
}
