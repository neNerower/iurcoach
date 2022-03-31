part of 'authentication_bloc.dart';

abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationInProgress extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final Credentials credentials;

  AuthenticationSuccess(this.credentials);
}

class AuthenticationFailure extends AuthenticationState {
  final String message;

  AuthenticationFailure(this.message);
}
