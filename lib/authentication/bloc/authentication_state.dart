part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.credentials = Credentials.empty,
  });

  final AuthenticationStatus status;
  final Credentials credentials;


  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(Credentials credentials)
      : this._(
          status: AuthenticationStatus.authenticated,
          credentials: credentials,
        );

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);


  @override
  List<Object> get props => [status, credentials];
}
