part of 'login_bloc.dart';

enum LoginStatus {
  pure,
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

  bool get isValid => username.validator().isEmpty && password.validator().isEmpty;

  @override
  List<Object> get props => [status, username, password];
}
