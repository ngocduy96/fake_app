import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120.0,
            padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    'Video',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 37.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children:<Widget>[
                    Icon(Icons.search, size:30.0, color:Colors.orange)
                  ]
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
