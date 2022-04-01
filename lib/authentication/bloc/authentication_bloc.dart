import 'dart:async';

import 'package:bloc/bloc.dart';

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
        super(AuthenticationInitial()) {
    on<AuthenticationInitialazed>(_onAuthenticationInitialazed);
    on<AuthenticationLoginRequested>(_onAuthenticationLoginRequested);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  void _onAuthenticationInitialazed(
    AuthenticationInitialazed event,
    Emitter<AuthenticationState> emit,
  ) async {
    final tokens = await _tryGetTokens();

    return emit(tokens != null
        ? AuthenticationSuccess(tokens)
        : AuthenticationInProgress());
  }

  void _onAuthenticationLoginRequested(
    AuthenticationLoginRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      _authenticationRepository.logIn(username: event.login, password: event.password);
      final tokens = await _tryGetTokens();
      return emit(AuthenticationSuccess(tokens!));
      
    } on AuthenticationException catch (e) {
      return emit(AuthenticationFailure(e.message));
    } catch (e) {
      return emit(AuthenticationFailure("Unknown exception !"));
    }
  }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authenticationRepository.logOut();
    return emit(AuthenticationInProgress());
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
