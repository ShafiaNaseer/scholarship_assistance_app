import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';




class DescriptionPage extends StatelessWidget{
final int index;
DescriptionPage(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("The Description page of $index"),
      ),
 body:Center (

   child: ElevatedButton(
     // Within the SecondScreen widget
     onPressed: () {
       // Navigate back to the first screen by popping the current route
       // off the stack.
       Navigator.pop(context,  MaterialPageRoute(
           builder: (context) => Home()));
     },
     child: const Text('Go back!'),
   ),

 ),

    );
  }


}