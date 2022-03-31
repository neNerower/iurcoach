import 'package:equatable/equatable.dart';

class Credentials extends Equatable {
  final String accessToken;
  final String refreshToken;

  const Credentials(this.accessToken, this.refreshToken);

  @override
  List<Object?> get props => [accessToken, refreshToken];
}