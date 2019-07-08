import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) =>new Column(
        children: <Widget>[
          Divider(height: 6.0,),
          ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].name,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),

                Text(
                  dummyData[i].time,
                  style: new TextStyle(
                      color: Colors.grey,
                    fontSize: 14.0
                  ),
                ),

              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummyData[i].message,
                style: new TextStyle(fontSize: 15.0),
              ),
            ),
            onTap: (){},
            contentPadding: EdgeInsets.symmetric(vertical: 3.0,horizontal: 15.0),
          )
        ],
      ),
    );
  }
}
