//Page for sigining in the user
import 'package:flutter/material.dart';
import 'package:meme_xd/Constants/constant.dart';
import 'package:meme_xd/main.dart';
import 'homePage.dart';

class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {

  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  String username ="";
  String password ="";
  int flag = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        title:const Text("Login", style:TextStyle(fontSize: 25.0),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.black,
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("lib/assets/logo.png") ,
                      const SizedBox(height: 15,),
                      TextFormField(
                        enableInteractiveSelection: true,
                        decoration: textinputdecoration.copyWith(hintText: "Username"),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Username can't be empty";
                          }
                          return null;
                        },
                        obscureText: false,
                        onChanged: (val){
                          setState(() => username=val);
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        enableInteractiveSelection: true,
                        decoration: textinputdecoration.copyWith(hintText: "Password"),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Password can't be empty";
                          }
                          return null;
                        },
                        obscureText: true,
                        onChanged: (val){
                          setState(() => password=val);
                        },
                      ),
                      const SizedBox(height: 15,),
                      RaisedButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: const Text("Login", style: TextStyle(fontSize: 17.0,fontFamily: "Merriweather",color: Colors.white)),
                        onPressed: ()async{
                          if(_formkey.currentState!.validate()) {
                            final snackBar1 = SnackBar(content: Text('Wrong username or password',style: TextStyle(color: Colors.white),));
                            final snackBar2 = SnackBar(content: Text('Please check your internet connection',style: TextStyle(color: Colors.white),));
                          if(userData.isEmpty)
                            {
                              ScaffoldMessenger.of(context).showSnackBar(snackBar2);
                            }
                          else {
                              for(int i =0;i<userData.length;i++)
                                {
                                  if(userData[i].username==username&&userData[i].username==password)
                                    {
                                      currentUser=userData[i];
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homePage()));
                                      setState(() {
                                        flag =1;
                                      });
                                    }
                                }
                              if(flag==0)
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar1);
                                }
                            }
                          }
                        },
                      ),
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
