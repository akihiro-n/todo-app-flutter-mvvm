import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';
part 'todo_state.g.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required int id,
    required String title,
    required String detail,
    required bool isComplete,
  }) = _TodoState;

  factory TodoState.fromJson(Map<String, dynamic> json) =>
      _$TodoStateFromJson(json);
}
