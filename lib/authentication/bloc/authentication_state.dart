part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final Tokens tokens;

  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.tokens = const Tokens("", ""),
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(Tokens tokens)
      : this._(status: AuthenticationStatus.authenticated, tokens: tokens);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, tokens];
}
