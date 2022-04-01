import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/authentication/bloc/authentication_bloc.dart';
import 'package:iurc_mobile_app/screens/screens.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        switch (state.runtimeType) {
          // case AuthenticationInitial:
          //   // Navigator.of(context).pushNamedAndRemoveUntil("/loading", (route) => false);
          //   Navigator.of(context).pushAndRemoveUntil(
          //     MaterialPageRoute(
          //       builder: (context) => _ScreenStub(title: "Loading.."),
          //     ),
          //     (route) => false,
          //   );
          //   break;
          case AuthenticationSuccess:
            // Navigator.of(context).pushNamedAndRemoveUntil("/home", (route) => false);
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => _ScreenStub(title: "Main Page"),
              ),
              (route) => false,
            );
            break;
          case AuthenticationInProgress:
            // Navigator.of(context).pushNamedAndRemoveUntil("/login", (route) => false);
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => _ScreenStub(title: "Sign In"),
              ),
              (route) => false,
            );
            break;
          default:
        }
      },
      child: LoadingScreen(),
    );
  }
}

class _ScreenStub extends StatelessWidget {
  final String title;
  const _ScreenStub({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
