//Starting point of application
//contains splash screen
//User redirected to signin page after splash screen

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:meme_xd/api_&_utils/get_Photos.dart';
import 'package:meme_xd/api_&_utils/get_albums.dart';
import 'package:meme_xd/api_&_utils/get_todos.dart';
import 'package:meme_xd/api_&_utils/get_users.dart';
import 'package:meme_xd/api_&_utils/parse_Images.dart';
import 'package:meme_xd/api_&_utils/parse_response.dart';
import 'package:meme_xd/screens/homePage.dart';
import 'package:meme_xd/screens/seeAlbum.dart';
import 'package:meme_xd/screens/signin.dart';
import 'api_&_utils/parse_albums.dart';
import 'api_&_utils/parse_todo.dart';

void main() {
  runApp(const MyApp());
}
var currentUser = userData[0];
List<ToDo> TODOCurrentUser = [];
List<Album> AlbumsCurrentUser = [];

List<ToDo> TODOs = [];
List<Photo> Photos = [];
List<Users> userData = [];
List<Album> Albums = [];



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Splash Screen
      home:AnimatedSplashScreen(
        backgroundColor: Colors.black26,
        duration:300,
        nextScreen:MyHomePage(),
        splashIconSize: 600,
        splash:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("lib/assets/logo.png",fit: BoxFit.fill,),
          ],
        ),
        splashTransition: SplashTransition.fadeTransition,
        animationDuration:const Duration(seconds: 1),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    //Function call to hit the api and get the response
    getAlbums();
    getTodo();
    getPhotos();
    getUsers();
  }
  @override
  Widget build(BuildContext context) {
    return signin();
  }
}
