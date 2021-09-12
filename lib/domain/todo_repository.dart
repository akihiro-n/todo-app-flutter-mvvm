import 'dart:convert';
import 'dart:math';

import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_mvvm_sample/domain/create_todo.dart';
import 'package:todo_mvvm_sample/domain/todo.dart';

class TodoRepository {
  TodoRepository({required this.preference}) {
    _update();
  }

  Future<SharedPreferences> preference;
  static const PREFERENCE_KEY_TODO = "PREFERENCE_KEY_TODO";
  static const PREFERENCE_KEY_COMPLETE_TODO_ID =
      "PREFERENCE_KEY_COMPLETE_TODO_ID";

  BehaviorSubject<List<Todo>> _todoList = BehaviorSubject.seeded(List.empty());

  Stream<List<Todo>> get todoList => _todoList.asBroadcastStream();

  BehaviorSubject<List<int>> _completeIdList =
      BehaviorSubject.seeded(List.empty());

  Stream<List<int>> get completeIdList => _completeIdList.asBroadcastStream();

  void _update() async {
    _todoList.value = await getAll();
    _completeIdList.value = await getCompleteIdList();
  }

  Future complete(int id) async {
    (await preference).setStringList(PREFERENCE_KEY_COMPLETE_TODO_ID, [
      ...(await getCompleteIdList()).map((e) => e.toString()).toList(),
      id.toString(),
    ]);
    return _update();
  }

  Future notComplete(int id) async {
    (await preference).setStringList(
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
    return _update();
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

    (await preference).setStringList(
      PREFERENCE_KEY_TODO,
      todoJsonList,
    );
    return _update();
  }
}
