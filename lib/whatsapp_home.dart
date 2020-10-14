import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> 
with SingleTickerProviderStateMixin
{

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex:1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),

        elevation: 0.7,
        bottom: new TabBar(controller: _tabController,
        indicatorColor: Colors.white,
        tabs: <Widget> [
          new Tab(icon:new Icon(Icons.camera_alt)),
          new Tab(text:'CALLS'),
          new Tab(text:'STATUS'),
          new Tab(text:'CHATS'),
        ],
        ),
      ),
      body: new Container(),
    );
  }
}
