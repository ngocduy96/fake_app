import 'package:flutter/material.dart';
import 'chat_page.dart'as firstpage ;
import 'match_page.dart' as secondpage;
import 'home1page.dart' as home_page;
import 'video_page.dart' as videopage;
import 'package:fake_app/src/source/home/menu_page.dart' as menu_page;
 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

TabController controller;

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var title = '';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      // endDrawer: Drawer(
      //     child: new ListView(padding: EdgeInsets.zero, children: <Widget>[
      //   new DrawerHeader(
      //     child: new Container(
      //       child: new Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: <Widget>[
      //           new Image.asset(
      //             'assets/duynguyen.png',
      //             width: 80,
      //             height: 80,
      //             fit: BoxFit.cover,
      //           ),
      //           new Text(
      //             'Nguyễn Ngọc Duy',
      //             style: new TextStyle(
      //                 color: Colors.white, fontWeight: FontWeight.bold),
      //           ),
      //           new Text(
      //             'Software developer',
      //             style: new TextStyle(
      //               color: Colors.white,
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     decoration: BoxDecoration(
      //       color: Colors.black,
      //     ),
      //   ),
      //   new ListTile(
      //     leading: new Icon(Icons.notifications),
      //     title: new Text('Notifications'),
      //   ),
      //   new ListTile(
      //     leading: new Icon(Icons.photo_album),
      //     title: new Text('Photo'),
      //   ),
      //   new ListTile(
      //     leading: new Icon(Icons.settings),
      //     title: new Text('Settings'),
      //   ),
      //   new Divider(
      //     color: Colors.black45,
      //     indent: 16.0,
      //   ),
      //   new ListTile(
      //     title: new Text('About us'),
      //   ),
      //   new ListTile(
      //     title: new Text('Privacy'),
      //   ),
      //   new FlatButton(
      //     child: Text(
      //       'Sign Out',
      //       style: TextStyle(fontSize: 14.0, color: Colors.black45),
      //     ),
      //     onPressed: () => _onAlertButton(context),
      //   ),
      // ])),
      // appBar: new AppBar(
      //   backgroundColor: Colors.black,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.favorite,
      //       color: Colors.orange,
      //     ),
      //     onPressed: () {
      //       _scaffoldKey.currentState.openDrawer();
      //     },
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //         icon: Icon(
      //           Icons.person,
      //           color: Colors.orange,
      //         ),
      //         tooltip: 'Search',
      //         onPressed:(){ _scaffoldKey.currentState.openDrawer();})
      //   ],
      //   title: new Text(
      //     'HomePage with Drawer',
      //     style: TextStyle(color: Colors.orange),
      //   ),
      // ),
      
      bottomNavigationBar: new Material(
        color: Colors.black,
        child: new TabBar(
          indicatorColor: Colors.orange,
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.chat),),
            new Tab(icon: new Icon(Icons.favorite),),
            new Tab(icon: new Icon(Icons.home, size: 30,),),
            new Tab(icon: new Icon(Icons.video_library),),
            new Tab(icon: new Icon(Icons.menu),),  
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new firstpage.ChatPage(),
          new secondpage.MatchPage(),
          new home_page.Home1Page(),
          new videopage.VideoPage(),
          new menu_page.MenuPage(),
        ],
      ),
    ));
  }
}
