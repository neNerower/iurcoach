import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'account_state.dart';
part 'account_cubit.freezed.dart';

class AccountCubit extends Cubit<AccountState> {
  final UserRepository _userRepository = UserRepository();
  AccountCubit() : super(AccountState.initial());

  void fetchAccountData() async {
    try {
      final user = await _userRepository.fetchAccountUser();
      emit(AccountState(user: user));
    } catch (_) {
      emit(AccountState.failure());
    }
  }
}
