import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'result_edit_state.dart';

class ResultEditCubit extends Cubit<ResultEditState> {
  final ResultRepository _resultRepository = ResultRepository();

  ResultEditCubit(int eventId) : super(ResultEditState.initial(eventId));

  void onCommentUpdated(String comment) {
    emit(ResultEditState(result: state.result..copyWith(comment: comment)));
  }

  void onImageUpload(String path) {
    emit(ResultEditState(
      result: state.result.copyWith(
        photos: state.result.photos.toList()..add(path),
      ),
    ));
  }

  void onSave() async {
    try {
      emit(state.copyWith(status: EditStatus.loading));

      Result result = await _resultRepository.postResult(result: state.result);

      emit(state.copyWith(result: result, status: EditStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EditStatus.failure));
    }
  }
}
