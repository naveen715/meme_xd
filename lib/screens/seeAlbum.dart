import 'package:flutter/material.dart';
class seeAlbum extends StatefulWidget {
  const seeAlbum({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _seeAlbumState createState() => _seeAlbumState();
}

class _seeAlbumState extends State<seeAlbum> {
  List<String> imageList =[
    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072__340.jpg",
    "https://cdn.pixabay.com/photo/2021/08/01/12/58/beach-6514331__340.jpg",
    "https://cdn.pixabay.com/photo/2016/12/11/12/02/mountains-1899264__340.jpg",
    "https://cdn.pixabay.com/photo/2016/03/04/19/36/beach-1236581__340.jpg",
    "https://cdn.pixabay.com/photo/2016/09/07/11/37/sunset-1651426__340.jpg",
    "https://cdn.pixabay.com/photo/2018/07/16/16/08/island-3542290__340.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        child: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(
                color: Colors.white70,
                fontSize: 40
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.black,
        ),
        preferredSize: const Size.fromHeight(50),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
        color: Colors.black,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: 8,
            itemBuilder: (BuildContext context,int index){
              return Container(
                height: 200,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20)
                ),
                child:Image.network(imageList[index],fit: BoxFit.fill,),
              );
            }
        ),
      ),
    );
  }
}
