part of 'result_edit_cubit.dart';

enum EditStatus { editing, loading, failure, success }

class ResultEditState extends Equatable {
  final Result result;
  final EditStatus status;

  const ResultEditState({
    required this.result,
    this.status = EditStatus.editing,
  });

  ResultEditState.initial(int eventId) : this(result: Result(eventId: eventId));

  ResultEditState copyWith({
    Result? result,
    EditStatus? status,
  }) {
    return ResultEditState(
      result: result ?? this.result,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [result, status];
}
