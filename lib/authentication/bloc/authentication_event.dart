part of 'authentication_bloc.dart';

abstract class AuthenticationEvent {}

class AuthenticationInitialazed extends AuthenticationEvent {}

class AuthenticationLoginRequested extends AuthenticationEvent {
  final String login;
  final String password;

  AuthenticationLoginRequested({
    required this.login,
    required this.password,
  });
}

class AuthenticationLogoutRequested extends AuthenticationEvent {}
