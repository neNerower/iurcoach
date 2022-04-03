import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/authentication/authentication.dart';

import 'package:iurc_mobile_app/login/login.dart';
import 'package:iurc_mobile_app/screens/screens.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        switch (state.status) {
          case AuthenticationStatus.unknown:
            return LoadingScreen();
          case AuthenticationStatus.authenticated:
            return HomeScreen();
          case AuthenticationStatus.unauthenticated:
            return LoginScreen();
        }
      },
    );
  }
}
