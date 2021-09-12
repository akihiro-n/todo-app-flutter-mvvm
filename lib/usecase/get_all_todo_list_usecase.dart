import 'package:rxdart/rxdart.dart';
import 'package:todo_mvvm_sample/domain/todo_repository.dart';
import 'package:todo_mvvm_sample/domain/todo.dart';
import 'package:todo_mvvm_sample/usecase/todo_state.dart';

class GetAllTodoListUsecase {
  GetAllTodoListUsecase(
    this._todoRepository,
  );

  final TodoRepository _todoRepository;

  Stream<List<TodoState>> getAll() {
    return CombineLatestStream.combine2(
      _todoRepository.todoList,
      _todoRepository.completeIdList,
      (List<Todo> todoList, List<int> completeIdList) => todoList
          .map(
            (e) => TodoState(
              id: e.id,
              title: e.title,
              detail: e.detail,
              isComplete: completeIdList.any((id) => id == e.id),
            ),
          )
          .toList(),
    ).asBroadcastStream();
  }
}
