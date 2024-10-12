import 'package:flutter/material.dart';

class mystatus extends StatefulWidget {
  const mystatus({super.key});

  @override
  State<mystatus> createState() => _mystatusState();
}

class _mystatusState extends State<mystatus> {
  @override
  Widget build(BuildContext context) {
    return   ListView(
      children: [
        
        recent('st1.png'),
        recent('st2.png'),
        recent('st3.png'),


      ]
    );
  }
}

class recent extends StatelessWidget {

   String imgname;
   recent(this.imgname);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff128c7e),
        
        backgroundImage: AssetImage("assets/images/$imgname"),
      ),
      title: Text('username'),
      subtitle: Text('Hi, how are you?'),
      
    );
  }
}