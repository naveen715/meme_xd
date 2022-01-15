//Hitting the api to get the photos
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:meme_xd/api_&_utils/parse_albums.dart';
import 'package:meme_xd/api_&_utils/parse_todo.dart';

import '../main.dart';
Future getAlbums() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    Albums = List<Album>.from(json.decode(response.body).map((x) => Album.fromJson(x)));
  } else {
    throw Exception('Failed to load users');
  }
}