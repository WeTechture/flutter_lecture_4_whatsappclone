// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({super.key});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
 
 String username = 'John doe';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        
        ListTile(
          leading: CircleAvatar(
            child: Text(username[0]),
            backgroundColor: Colors.blue,
          ),
          title: Text(username),
          subtitle: Text('Hi, how are you?'),
          trailing: Text(
            '10:00 AM',
            style: TextStyle(fontSize: 14, color: Color(0xff128c7e)),
          ),
        ),


        ListTile(
          leading: CircleAvatar(
            child: Text('A'),
            backgroundColor: Colors.blue,
          ),
          title: Text('Kim'),
          subtitle: Text('When will you arrive?'),
          trailing: Text(
            '08:54 AM',
            style: TextStyle(fontSize: 14, color: Color(0xff128c7e)),
          ),
        ),


        ListTile(
          leading: CircleAvatar(
            child: Text('A'),
            backgroundColor: Colors.blue,
          ),
          title: Text('Sara'),
          subtitle: Text('Share you work right now!!'),
          trailing: Text(
            '07:00 AM',
            style: TextStyle(fontSize: 14, color: Color(0xff128c7e)),
          ),
        ),


        ListTile(
          leading: CircleAvatar(
            child: Text('A'),
            backgroundColor: Colors.blue,
          ),
          title: Text('You'),
          subtitle: Row(children: [
            Icon(
              Icons.done_all,
              color: Colors.blue,
              size: 20,
            ),
            Text(
              'Ok thanks..',
              style: TextStyle(
                fontSize: 14,
              ),
            )
          ]),
          trailing: Text(
            '03:45 AM',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),


        ListTile(
          leading: CircleAvatar(
            child: Text('A'),
            backgroundColor: Colors.blue,
          ),
          title: Text('Manager'),
          subtitle: Text('Meeting is cancel...'),
          trailing: Text(
            '03:45 AM',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
