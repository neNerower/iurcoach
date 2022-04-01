part of 'authentication_bloc.dart';

abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationInProgress extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final Tokens tokens;

  AuthenticationSuccess(this.tokens);
}

class AuthenticationFailure extends AuthenticationState {
  final String message;

  AuthenticationFailure(this.message);
}
