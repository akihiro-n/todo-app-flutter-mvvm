import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_mvvm_sample/domain/domain_provider.dart';
import 'package:todo_mvvm_sample/usecase/get_all_todo_list_usecase.dart';

final getAllTodoListUsecaseProvider = Provider(
  (refs) => GetAllTodoListUsecase(
    refs.read(todoRepositoryProvider),
  ),
);
