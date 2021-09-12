import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_todo.freezed.dart';
part 'create_todo.g.dart';

@freezed
class CreateTodo with _$CreateTodo {
  const factory CreateTodo(
      {required String title, required String detail}) = _CreateTodo;
  factory CreateTodo.fromJson(Map<String, dynamic> json) => _$CreateTodoFromJson(json);
}