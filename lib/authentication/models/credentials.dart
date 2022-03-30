import 'package:equatable/equatable.dart';

class Credentials extends Equatable {
  final String accessToken;
  final String refreshToken;

  const Credentials(this.accessToken, this.refreshToken);

  static const empty = Credentials("", "");

  @override
  List<Object?> get props => [];
}