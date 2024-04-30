import 'dart:convert';
import 'dart:io';

import 'package:desimeals/constants/api_constant.dart';
import 'package:desimeals/models/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoService {
  Future<List<Todo>> getTodos() async {
    const String reqURL = ApiConstant.baseURL + ApiConstant.todos;
    Uri url = Uri.parse(reqURL);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Todo> todos = body.map((body) => Todo.fromJSON(body)).toList();
      await Future.delayed(const Duration(milliseconds: 1000));
      return todos;
    } else {
      throw ("Failed to load todos");
    }
  }

}
