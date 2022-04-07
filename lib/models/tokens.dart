import 'package:equatable/equatable.dart';

class Tokens extends Equatable {
  final String accessToken;
  final String refreshToken;

  const Tokens(this.accessToken, this.refreshToken);
  const Tokens.empty() : this("", "");

  bool get isEmpty => accessToken.isEmpty || refreshToken.isEmpty;

  @override
  List<Object?> get props => [accessToken, refreshToken];
}