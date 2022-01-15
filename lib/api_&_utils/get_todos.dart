//Hitting the api to get the Todo's
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:meme_xd/api_&_utils/parse_todo.dart';
import '../main.dart';
Future getTodo() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  if (response.statusCode == 200) {

    TODOs = List<ToDo>.from(json.decode(response.body).map((x) => ToDo.fromJson(x)));
  } else {
    throw Exception('Failed to load users');
  }
}