import 'dart:async';

import 'package:bloc/bloc.dart';

import '../models/models.dart';
import '../repositories/repositories.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;
  final CredentialsRepository _credentialsRepository;

  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
    required CredentialsRepository credentialsRepository,
  })  : _authenticationRepository = authenticationRepository,
        _credentialsRepository = credentialsRepository,
        super(AuthenticationInitial()) {
    on<AuthenticationInitialazed>(_onAuthenticationInitialazed);
    on<AuthenticationLoginRequested>(_onAuthenticationLoginRequested);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  void _onAuthenticationInitialazed(
    AuthenticationInitialazed event,
    Emitter<AuthenticationState> emit,
  ) async {
    final credentials = await _tryGetCredentials();

    return emit(credentials != null
        ? AuthenticationSuccess(credentials)
        : AuthenticationInProgress());
  }

  void _onAuthenticationLoginRequested(
    AuthenticationLoginRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      _authenticationRepository.logIn(username: event.login, password: event.password);
      final credentials = await _tryGetCredentials();
      return emit(AuthenticationSuccess(credentials!));
      
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

  Future<Credentials?> _tryGetCredentials() async {
    try {
      final credentials = await _credentialsRepository.getCredentials();
      return credentials;
    } catch (_) {
      return null;
    }
  }
}
