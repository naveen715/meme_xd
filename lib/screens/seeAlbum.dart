//Screen for user to view a particular album

import 'package:flutter/material.dart';
import 'package:meme_xd/api_&_utils/parse_Images.dart';
class seeAlbum extends StatefulWidget {
  const seeAlbum({Key? key, required this.title,required this.ImageList}) : super(key: key);
  final String title;
  final List<Photo> ImageList;
  @override
  _seeAlbumState createState() => _seeAlbumState();
}

class _seeAlbumState extends State<seeAlbum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        child: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(
                color: Colors.white70,
                fontSize:20
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
            itemCount:widget.ImageList.length,
            itemBuilder: (BuildContext context,int index){
              return Container(
                height: MediaQuery.of(context).size.height/3,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20)
                  ),
                child: ListTile(
<<<<<<< HEAD
                 title:Image.network(widget.ImageList[index].url,fit: BoxFit.contain,width:MediaQuery.of(context).size.height/4,height: MediaQuery.of(context).size.height/4,) ,
                  subtitle: Text(widget.ImageList[index].title,style: TextStyle(color: Colors.white60, fontSize: 15),overflow: TextOverflow.clip,),
=======
                 title:Image.network(imageList[index],fit: BoxFit.contain,) ,
                  subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text ",style: TextStyle(color: Colors.white60, fontSize: 15),overflow: TextOverflow.clip,),
>>>>>>> origin/master
                ),
              );
            }
        ),
      ),
    );
  }
}
