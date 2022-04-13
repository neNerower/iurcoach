part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = AccountInitial;
  const factory AccountState.data({required User user}) = AccountData;
  const factory AccountState.failure({String? message}) = AccountFailure;
}
