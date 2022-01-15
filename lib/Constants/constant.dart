//file contains constants required in the application

import 'package:flutter/material.dart';

const textinputdecoration = InputDecoration(
  fillColor: Colors.grey,
  filled: true,
  contentPadding: EdgeInsets.all(12.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
  ),
  errorStyle: TextStyle(color: Colors.white,fontSize: 15),
  labelStyle: TextStyle(color: Colors.black,fontSize: 20),
);
const textformat = TextStyle(
    color: Colors.black,fontSize: 20.0,fontWeight:FontWeight.bold
);
const textformatUserProfile = TextStyle(
    fontSize: 20.0,fontWeight:FontWeight.bold
);
List<String> listMessage = [
  "Draft Posts",
  "Write Content",
  "Write Emails",
  "Draft Posts",
  "Write Emails",
  "Write Content"
];
List<String> status = [
  "Completed",
  "Incomplete",
  "Completed",
  "Incomplete",
  "Incomplete",
  "Completed"
];
TextColour(bool value)
{
  if(value==false)
    return Colors.red;
  else
    return Colors.green;
}