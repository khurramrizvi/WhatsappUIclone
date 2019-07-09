import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'pages/call_screen.dart';
import 'pages/camera_screen.dart';
import 'pages/status_screen.dart';
import 'pages/chat_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "CHATS",
            ),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            )
          ],
        ),
        actions: <Widget>[

          Icon(Icons.search,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(horizontal: 2.0)),
        ],
      ),
      body: new TabBarView(controller: _tabController, children: <Widget>[
        new CameraScreen(),
        new ChatScreen(),
        new StatusScreen(),
        new CallsScreen(),
      ]),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {
            Toast.show("start new chat", context,duration: 3,gravity: 0,backgroundColor: Theme.of(context).accentColor);
          },
        child: Icon(Icons.message,color: Colors.white,),
          ),
    );
  }
}
