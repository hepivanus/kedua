import 'package:flutter/material.dart';
import 'package:kedua/models/message_models.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext contaxt, int index) {
              final Message chat = chats[index];
              return Column(
                children: <Widget> [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage(chat.sender.imageUrl),
                  ),

                  Column(
                    children: <Widget>[
                      Text(chat.sender.name),

                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
