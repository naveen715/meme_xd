//Home page containig the bottom navigation bar
import 'package:flutter/material.dart';
import 'package:meme_xd/Constants/constant.dart';
import 'package:meme_xd/api_&_utils/parse_Images.dart';
import 'package:meme_xd/screens/seeAlbum.dart';
import 'package:meme_xd/screens/signin.dart';
import '../main.dart';
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _currentIndex = 0;
  //Function to change the index of bottom navigation bar
  void onTabTapped(int index)async{
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    //List of children for bottom navigation bar
    final List children = [
      Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            title: const Text(
              "Albums",
              style: TextStyle(color: Colors.white70, fontSize: 40),
            ),
            bottom: AppBar(
              title: const Text(
                "This is a dummy text\nThis is also dummy text line 2\nThis is line 3 of dummy text",
                style: TextStyle(color: Colors.white60, fontSize: 15),
              ),
              backgroundColor: Colors.black,
            ),
            centerTitle: false,
            backgroundColor: Colors.black,
          ),
          preferredSize: const Size.fromHeight(120),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          color: Colors.black,
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: AlbumsCurrentUser.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    trailing: Icon(
                      Icons.keyboard_arrow_right_sharp,
                      color: Colors.white70,
                    ),
                    title: Text(
                      AlbumsCurrentUser[index].title,
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                    onTap: () {
                      List<Photo> ImageList = [];
                      for(int i=0;i<AlbumsCurrentUser.length;i++)
                        {
                          for(int j=0;j<Photos.length;j++)
                            {
                              if(AlbumsCurrentUser[i].id==Photos[j].albumId)
                                {
                                  ImageList.add(Photos[j]);
                                }
                            }
                        }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => seeAlbum(
                                title: AlbumsCurrentUser[index].title,ImageList: ImageList,
                              )));
                    },
                  ),
                );
              }),
        ),
      ),
      Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            title: const Text(
              "To Do List",
              style: TextStyle(color: Colors.white70, fontSize: 40),
            ),
            bottom: AppBar(
              title: const Text(
                "This is a dummy text\nThis is also dummy text line 2\nThis is line 3 of dummy text",
                style: TextStyle(color: Colors.white60, fontSize: 15),
              ),
              backgroundColor: Colors.black,
            ),
            centerTitle: false,
            backgroundColor: Colors.black,
          ),
          preferredSize: const Size.fromHeight(120),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          color: Colors.black,
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount:TODOCurrentUser.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    title: Text(
                      TODOCurrentUser[index].title,
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                    subtitle: Text(
                      TODOCurrentUser[index].completed?"Completed":"Incomplete",
                      style:
                      TextStyle(color: TextColour(TODOCurrentUser[index].completed), fontSize: 15),
                    ),
                  ),
                );
              }),
        ),
      ),
      Scaffold(
        appBar: PreferredSize(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 90,
                  color: Colors.grey[700],
                ),
                Text(
                  "User Profile",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(120),
        ),
        body: Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Basic Information",
                    style: textformatUserProfile.copyWith(color: Colors.white70),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.name,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.email,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Password",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.username,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phone No.",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.phone,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Website",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.website,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Company",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.company.name,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Address Information",
                    style: textformatUserProfile.copyWith(color: Colors.white70),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Street",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.address.street,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Suite",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.address.suite,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "City",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.address.city,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Zip Code",
                        style:
                        textformatUserProfile.copyWith(color: Colors.white70),
                      ),
                      Text(
                        currentUser.address.zipcode,
                        style:
                        textformatUserProfile.copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextButton(onPressed:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signin()));
                  }, child: Text("Logout",style: textformatUserProfile.copyWith(color: Colors.white70),)),
                   SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )),
      ),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.grey,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            title: Text('Albums',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            title: Text('ToDoList',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            title: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          )
        ],
      ),
      body:children[_currentIndex],
    );
  }
}
