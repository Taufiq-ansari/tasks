import 'package:api/state_management/riverpod/model/todoModel.dart';
import 'package:flutter_riverpod/legacy.dart';

final todoListProvider =
    StateNotifierProvider<TodoListNotifier, List<Todo>>((_) {
  return TodoListNotifier([]);
});

class TodoListNotifier extends StateNotifier<List<Todo>> {
  TodoListNotifier(super.state);

  // create  function

  void add(String title) {
    final newTodo = Todo(
      id: state.isEmpty ? 1 : state.last.id + 1,
      name: title,
      isComplete: false,
    );

    state = [...state, newTodo];

    print(" state: $state");
  }

  remove(int id) {
    state = state.where((t) => t.id != id).toList();
  }

  toggle(int id) {
    final todos = [...state];
    final index = todos.indexWhere((t) => t.id == id);

    if (index == -1) {
      return;
    }
    final todo = todos[index];
    todos[index] = todo.copyWith(complete: !todo.isComplete);

    state = todos;
  }
}
