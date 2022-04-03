import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/models.dart';
import '../repositories/repositories.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;
  final TokensRepository _tokensRepository;

  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
    required TokensRepository tokensRepository,
  })  : _authenticationRepository = authenticationRepository,
        _tokensRepository = tokensRepository,
        super(AuthenticationState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
      case AuthenticationStatus.unknown:
      case AuthenticationStatus.authenticated:
        final tokens = await _tryGetTokens();
        return emit(tokens != null
            ? AuthenticationState.authenticated(tokens)
            : const AuthenticationState.unauthenticated());
      default:
        return emit(const AuthenticationState.unknown());
    }
  }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authenticationRepository.logOut();
    return emit(AuthenticationState.unauthenticated());
  }

  Future<Tokens?> _tryGetTokens() async {
    try {
      final tokens = await _tokensRepository.getTokens();
      return tokens;
    } catch (_) {
      return null;
    }
  }
}
