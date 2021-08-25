import 'package:flutter/material.dart';
import 'package:kedua/models/message_models.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext contaxt, int index) {
              final Message chat = chats[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(chat.sender.imageUrl),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        chat.sender.name,
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                       SizedBox(height: 5.0),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(chat.text, style: TextStyle(color: Colors.blueGrey, fontSize: 15.0, fontWeight: FontWeight.w600),
                         overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
