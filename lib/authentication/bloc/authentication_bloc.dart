import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iurc_mobile_app/models/tokens.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final TokensRepository _tokensRepository;

  AuthenticationBloc({
    required TokensRepository tokensRepository,
  })  : _tokensRepository = tokensRepository,
        super(AuthenticationState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
      case AuthenticationStatus.unknown:
      case AuthenticationStatus.authenticated:
        final tokens = await _tokensRepository.getTokens();
        return emit(!tokens.isEmpty
            ? AuthenticationState.authenticated(tokens)
            : const AuthenticationState.unauthenticated());
      default:
        return emit(const AuthenticationState.unknown());
    }
  }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _tokensRepository.deleteTokens();
    return emit(AuthenticationState.unauthenticated());
  }
}
