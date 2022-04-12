part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = Initial;
  const factory AccountState({required User user}) = Data;
  const factory AccountState.failure({String? message}) = Failure;
}
