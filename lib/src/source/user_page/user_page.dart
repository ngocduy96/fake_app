import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  // static const double baseHeight = 500.0;
  // double screenAwareSize(double size, BuildContext context) {
  //   // double a=MediaQuery.of(context).size.height;
  //   // double b=MediaQuery.of(context).size.width;
  //   // print(a/b);
  //   return size * MediaQuery.of(context).size.height / baseHeight;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Duy Nguyễn',
            style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold)),
        centerTitle: false,
        backgroundColor: Colors.black,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.red,
            onPressed: () {},
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Container(
             
                  color: Colors.black,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            height: 200.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/image16.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                        ],
                      ),
                      Positioned(
                          top: 120,
                          child: Container(
                            height: 190.0,
                            width: 190.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/duynguyen.png'),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                    width: 5.0, color: Colors.white)),
                          )),
                    ],
                  )),
              SizedBox(
                height: 4.0,
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Duy Nguyễn',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Icon(
                        Icons.check_circle,
                        color: Colors.blueAccent,
                        size: 17.0,
                      )
                    ],
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  child: Text('Sofware Developer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 315,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          print('Thêm tin');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Icon(
                                  Icons.control_point,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                color: Colors.blue,
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  'Thêm tin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      width: 30,
                      child: RaisedButton(
                        color: Colors.grey,
                        onPressed: () {
                          print('More');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Center(
                                    child: Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
               
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    top:BorderSide(
                    width:2.0,color: Colors.grey),
                    bottom: BorderSide(
                    width:2.0,color: Colors.grey),),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.business_center, size: 22.0, color: Colors.grey[200],),
                        SizedBox(width: 5.0,),
                        Text('Làm việc tại Công ty TNHH ', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.favorite, size: 22.0, color: Colors.grey[200],),
                      SizedBox(width:5.0,),
                      Text('Đã kết hôn với Lina Lyy', style: TextStyle(color: Colors.white, fontSize: 20.0),)
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.access_time, size: 22.0, color: Colors.grey[200],),
                      SizedBox(width:5.0,),
                      Text('Đã tham gia từ ngày ...', style: TextStyle(color: Colors.white, fontSize: 20.0),)
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.forward, size: 22.0, color: Colors.grey[200],),
                      SizedBox(width:5.0,),
                      Text('Có 999.999.999 người theo dõi', style: TextStyle(color: Colors.white, fontSize: 20.0),)
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.more_horiz, size: 22.0, color: Colors.grey[200],),
                      SizedBox(width:5.0,),
                      Text('Xem thông tin giới thiệu của bạn', style: TextStyle(color: Colors.white, fontSize: 20.0),)
                    ],),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      width: double.infinity,
                      
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text('Chỉnh sửa chi tiết công khai', style: TextStyle(color: Colors.blue[600],fontSize: 20.0),),
                        color: Colors.blue[200],
                        onPressed: (){
                        print('Chỉnh sửa chi tiết công khai');
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
