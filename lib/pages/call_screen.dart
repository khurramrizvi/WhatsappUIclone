import 'package:flutter/material.dart';
import 'package:whatsapp/models/calls_model.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCalls.length,
      itemBuilder: (context,i) => new Column(
        children: <Widget>[
          Divider(height: 10.0,),
          ListTile(
        leading: new CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          foregroundColor: Colors.grey,
          backgroundImage: new NetworkImage(dummyCalls[i].avatarUrl),
        ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyCalls[i].name,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
                Icon(Icons.call,
                color: Theme.of(context).primaryColor,)
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Icon(Icons.call_missed,
                size: 18.0,
                color: Colors.redAccent,),
                new Text(
                  dummyCalls[i].time,
                  style: new TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.0
                  ),
                ),
              ],
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
