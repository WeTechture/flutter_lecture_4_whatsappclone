// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lecture_4_whatsappclone/chat_screen.dart';
import 'package:lecture_4_whatsappclone/updates.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  int index = 1;
  void onItemTap(i){
    setState(() {
      index = i; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
          backgroundColor: Color(0xff128c7e),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xff128c7e),
            indicatorAnimation: TabIndicatorAnimation.elastic ,
            tabs: [
            Tab(child: Icon(Icons.people, color: Colors.white,), ),
            Tab(child: Text("Chats", style: TextStyle(color: Colors.white,),),),
            Tab(child: Text("Updates" , style: TextStyle(color: Colors.white,),),),
            Tab(child: Text("Calls" , style: TextStyle(color: Colors.white,),),),
          ]),
        ),
        body: TabBarView(children: [
          Text("1"),
          chatScreen(),
          mystatus(),
          Text("4"),

        ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
              ),

               BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: "Updates",

              ),

               BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "People",

              ),
          ],
           currentIndex: index,
        selectedItemColor: Color(0xff128c7e),
        onTap: onItemTap,
        
          ),
      ),
    );
  }
}
