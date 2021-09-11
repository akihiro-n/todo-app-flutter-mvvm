import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_mvvm_sample/domain/todo_repository.dart';

final preferenceProvider = Provider(
  (refs) => SharedPreferences.getInstance(),
);

final todoRepositoryProvider = Provider(
  (refs) => TodoRepository(
    refs.read(preferenceProvider),
  ),
);
