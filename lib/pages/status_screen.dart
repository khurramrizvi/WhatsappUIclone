import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount:dummyStatus.length,
        itemBuilder: (context,i) => new Column(
          children: <Widget>[
            Divider(height: 6.0,),
            ListTile(
              leading: new CircleAvatar(
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyStatus[i].avatarUrl),
              ),
              title: Row(
                children: <Widget>[
                  Text(
                    dummyStatus[i].name,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyStatus[i].time,
                  style: new TextStyle(fontSize: 15.0),
                ),
              ),
              onTap: (){},
              contentPadding: EdgeInsets.symmetric(vertical: 3.0,horizontal: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
