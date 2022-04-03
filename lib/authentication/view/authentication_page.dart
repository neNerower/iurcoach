import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../authentication.dart';
import 'authentication_view.dart';

class AuthenticationPage extends StatelessWidget {
  final authenticationRepository = AuthenticationRepository();
  final tokensRepository = TokensRepository();

  AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
          authenticationRepository: authenticationRepository,
          tokensRepository: tokensRepository,
        )..add(AuthenticationStatusChanged(AuthenticationStatus.unknown)),
        child: AuthenticationView(),
      ),
    );
  }
}
