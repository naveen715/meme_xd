//Hitting the api to get the photos
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:meme_xd/api_&_utils/parse_Images.dart';
import 'package:meme_xd/api_&_utils/parse_todo.dart';

import '../main.dart';
Future getPhotos() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  if (response.statusCode == 200) {

    Photos = List<Photo>.from(json.decode(response.body).map((x) => Photo.fromJson(x)));
  } else {
    throw Exception('Failed to load users');
  }
}