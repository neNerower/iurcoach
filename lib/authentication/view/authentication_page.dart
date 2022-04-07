import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

import '../authentication.dart';
import 'authentication_view.dart';

class AuthenticationPage extends StatelessWidget {
  final _tokensRepository = TokensRepository();

  AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _tokensRepository,
      child: BlocProvider(
        create: (_) => AuthenticationBloc(
          tokensRepository: _tokensRepository,
        )..add(AuthenticationStatusChanged(AuthenticationStatus.unknown)),
        child: AuthenticationView(),
      ),
    );
  }
}
