class Todo {
  final int id;
  final String name;
  final bool isComplete;

  Todo({required this.id, required this.name, required this.isComplete});

  Todo copyWith({int? id, String? name, bool? complete}) {
    return Todo(
      id: id ?? this.id,
      name: name ?? this.name,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  @override
  String toString() {
    return "Todo(id: $id, name: $name, isComplete: $isComplete)";
  }
}
