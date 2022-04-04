import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iurc_mobile_app/authentication/authentication.dart';

import '../login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationRepository _authenticationRepository;

  LoginBloc(this._authenticationRepository) : super(LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    final username = Username.value(event.username);
    emit(state.copyWith(
      username: username,
    ));
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.value(event.password);
    emit(state.copyWith(
      password: password,
    ));
  }

  void _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isValid) {
      emit(state.copyWith(status: LoginStatus.submissionInProgress));
      try {
        await _authenticationRepository.logIn(
          username: state.username.value,
          password: state.password.value,
        );
        // Add auth bloc event
        event.bloc.add(AuthenticationStatusChanged(AuthenticationStatus.authenticated));

        // ? Should be emitted ?
        emit(state.copyWith(status: LoginStatus.submissionSuccess));
      } catch (_) {
        emit(state.copyWith(status: LoginStatus.submissionFailure));
      }
    }
  }
}
