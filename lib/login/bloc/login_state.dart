part of 'login_bloc.dart';

enum LoginStatus {
  pure,
  invalid,
  valid,
  submissionInProgress,
  submissionSuccess,
  submissionFailure
}

class LoginState extends Equatable {
  final LoginStatus status;
  final Username username;
  final Password password;

  const LoginState({
    this.status = LoginStatus.pure,
    this.username = const Username(),
    this.password = const Password(),
  });

  LoginState copyWith({
    LoginStatus? status,
    Username? username,
    Password? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  static LoginStatus validate(Username username, Password password) {
    return username.validate() && password.validate()
        ? LoginStatus.valid
        : LoginStatus.invalid;
  }

  @override
  List<Object> get props => [status, username, password];
}
