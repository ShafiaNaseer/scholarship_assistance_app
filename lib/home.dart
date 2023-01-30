import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scholarship_assistance_app/chat_screen.dart';
import 'DescriptionPage.dart';

class Home extends StatelessWidget{


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scholarship Assistance App"),

      ),
      body:Container(
     child: ListView.builder(

        itemBuilder: ( context, int index)  => ListTile(

              leading:CircleAvatar(backgroundImage:AssetImage('assets/images/3754775-middle.jpg'), backgroundColor:Colors.purple.shade300,),
              trailing: IconButton(
                onPressed:(){
                color: Colors.purple;
              }, icon:  Icon(Icons.favorite),
              ),
              title: Text('hello $index' ),
              subtitle: Text(' Deadline '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => DescriptionPage(index)));
              }
            )
      ),
              ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.message),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatScreen()),
          );
        },

      ),
      );

  }



}