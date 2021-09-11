import 'dart:convert';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_mvvm_sample/create_todo.dart';
import 'package:todo_mvvm_sample/todo.dart';

class TodoRepository {
  TodoRepository(
    this.preference,
  );

  Future<SharedPreferences> preference;
  static const PREFERENCE_KEY_TODO = "PREFERENCE_KEY_TODO";
  static const PREFERENCE_KEY_COMPLETE_TODO_ID =
      "PREFERENCE_KEY_COMPLETE_TODO_ID";

  Future complete(int id) async {
    return (await preference).setStringList(PREFERENCE_KEY_COMPLETE_TODO_ID, [
      ...(await getCompleteIdList()).map((e) => e.toString()).toList(),
      id.toString(),
    ]);
  }

  Future notComplete(int id) async {
    return (await preference).setStringList(
      PREFERENCE_KEY_COMPLETE_TODO_ID,
      (await getCompleteIdList())
          .where(
            (element) => element != id,
          )
          .map(
            (e) => e.toString(),
          )
          .toList(),
    );
  }

  Future<List<int>> getCompleteIdList() async {
    final completeTodoIdList =
        (await preference).getStringList(PREFERENCE_KEY_COMPLETE_TODO_ID) ??
            <String>[];
    return completeTodoIdList.map((e) => int.parse(e)).toList();
  }

  Future<List<Todo>> getAll() async {
    final todoJsonList =
        (await preference).getStringList(PREFERENCE_KEY_TODO) ?? <String>[];
    final todoList = todoJsonList.map(
      (json) => Todo.fromJson(jsonDecode(json)),
    );
    return todoList.toList();
  }

  Future save(
    CreateTodo createTodo,
  ) async {
    final oldTodoList = await getAll();

    int id;
    if (oldTodoList.isEmpty) {
      id = 0;
    } else {
      final maxValue = oldTodoList
          .map(
            (e) => e.id,
          )
          .reduce(max);
      id = maxValue + 1;
    }

    final todo = Todo(
      id: id,
      title: createTodo.title,
      detail: createTodo.detail,
    );
    final todoJson = jsonEncode(todo);
    final todoJsonList = [
      ...oldTodoList.map((e) => jsonEncode(e)),
      todoJson,
    ];

    return (await preference).setStringList(
      PREFERENCE_KEY_TODO,
      todoJsonList,
    );
  }
}
