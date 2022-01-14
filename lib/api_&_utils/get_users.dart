//Hitting the api to get the user details
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:meme_xd/api_&_utils/parse_response.dart';

import '../main.dart';
var UserInfo;
Future getUsers() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  if (response.statusCode == 200) {
   userData = List<Users>.from(json.decode(response.body).map((x) => Users.fromJson(x)));
  } else {
    throw Exception('Failed to load users');
  }
}