import 'package:desimeals/models/todo_model.dart';
import 'package:desimeals/services/todo_service.dart';
import 'package:desimeals/widgets/spinner_with_text_widget.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  late Future<List<Todo>> _todos;

  @override
  void initState() {
    super.initState();
    this._getTodos();
  }

  _getTodos() {
    _todos = TodoService().getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http Fetch Example"),
      ),
      body: FutureBuilder(
        builder: _buildTodoListTile(),
        future: _todos,
      ),
    );
  }

  Widget Function(BuildContext context, AsyncSnapshot<List<Todo>> snapshot)
      _buildTodoListTile() {
    return (context, snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: snapshot.data![index].completed
                      ? Colors.green
                      : Colors.white,
                    child: Text(snapshot.data![index].id.toString()),
                  ),
                  title: Text(snapshot.data![index].title),
                  style: ListTileStyle.list,
                  tileColor: Color.fromARGB(255, 238, 238, 238),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              );
            },
            itemCount: snapshot.data!.length);
      } else if (snapshot.hasError) {
        return const ListTile(
          title: Text("Failed to Load Todos"),
        );
      }
      return const SpinnerWithText(
        text: 'Loading',
      );
    };
  }
}
