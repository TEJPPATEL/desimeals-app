class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.fromJSON(Map<String, dynamic> json) {
    return Todo(
        completed: json['completed'],
        id: json['id'],
        title: json['title'],
        userId: json['userId']);
  }

  Map<String,dynamic> toJSON(Todo todo) {
    return {
      'userId': todo.userId,
      'id': todo.id,
      'title': todo.title,
      'completed': todo.completed
    };
  }

}
