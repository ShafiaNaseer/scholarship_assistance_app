import 'package:flutter/material.dart';
import 'package:scholarship_assistance_app/favourite.dart';
import 'package:scholarship_assistance_app/myaccount.dart';
import 'home.dart';
import 'package:scholarship_assistance_app/chat_screen.dart';

void main(){
  runApp(MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp ({Key? key}) : super(key: key);
  State<MyApp> createState()=> _MyApp();}

class _MyApp extends  State<MyApp>{
  int _selectedIndex=0;

  final List<Widget> _pages = [Home(), Favourite(), MyAccount()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scholarship Assistance App",
theme: ThemeData(
  primarySwatch: Colors.purple,
),
 home: Scaffold(

 body:_pages[_selectedIndex],
   bottomNavigationBar:BottomNavigationBar (

 currentIndex: _selectedIndex,
    selectedItemColor: Colors.purple.shade300,
    onTap: _onItemTapped,
     items:const [

       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: 'Home',
       ),


       BottomNavigationBarItem(
         icon: Icon(Icons.favorite),
         label: 'Saved',
       ),

       BottomNavigationBarItem(
         icon:  Icon(Icons.account_circle),
         label: 'Me',
       )
     ]
   ),
 )
    );
  }



}