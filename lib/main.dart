import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:meme_xd/api_&_utils/get_users.dart';
import 'package:meme_xd/api_&_utils/parse_response.dart';
import 'package:meme_xd/screens/homePage.dart';
import 'package:meme_xd/screens/seeAlbum.dart';
import 'package:meme_xd/screens/signin.dart';

void main() {
  runApp(const MyApp());
}
List<Users> userData = [];
var currentUser = userData[0];
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
    getUsers();
  }
  @override
  Widget build(BuildContext context) {
    return signin();
  }
}
