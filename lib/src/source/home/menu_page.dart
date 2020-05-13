import 'package:fake_app/src/source/loginpage/login_page.dart';
import 'package:fake_app/src/source/user_page/user_page.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
      child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 120,
              padding:
                  EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Text(
                    'Menu',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 37.0,
                        fontWeight: FontWeight.bold),
                  )),
                  Row(children: <Widget>[
                    Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.orange,
                    )
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: Image.asset(
                'assets/duynguyen.png',
                fit: BoxFit.cover,
              ),
              title: Text(
                'Duy Nguyễn',
                style: TextStyle(color: Colors.orange, fontSize: 25.0),
              ),
              subtitle: Text("Trang cá nhân của bạn",
                  style: TextStyle(color: Colors.grey, fontSize: 13.0)),
              onTap: ()=> {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> UserPage()))
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              leading: Icon(
                Icons.turned_in,
                color: Colors.orange,
                size: 32.0,
              ),
              title: Text(
                'Đã lưu',
                style: TextStyle(color: Colors.orange, fontSize: 20.0),
              ),
              onTap: (){print('Đã lưu');},
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.orange,
                size: 32.0,
              ),
              title: Text(
                'Bạn bè',
                style: TextStyle(color: Colors.orange, fontSize: 20.0),
              ),
              onTap: (){print('Bạn bè');},
            ),
            ListTile(
              leading: Icon(
                Icons.restore,
                color: Colors.orange,
                size: 32.0,
              ),
              title: Text(
                'Kỉ niệm',
                style: TextStyle(color: Colors.orange, fontSize: 20.0),
              ),
              onTap: (){print('Kỉ niệm');},
            ),
            
            ListTile(
              leading: Icon(
                Icons.widgets,
                color: Colors.orange,
                size: 32.0,
              ),
              title: Text(
                'Xem thêm',
                style: TextStyle(color: Colors.orange, fontSize: 20.0),
              ),
              onTap: (){print('Xem thêm');},
            ),
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: Colors.grey[300],
                size: 30.0,
              ),
              title: Text(
                'Trợ giúp & Hỗ Trợ',
                style: TextStyle(color: Colors.grey[300], fontSize: 20.0),
              ),
              onTap: (){print('Trợ giúp & Hỗ Trợ');},
            ),
            ListTile(
              leading: Icon(
                Icons.brightness_7,
                color: Colors.grey[300],
                size: 30.0,
              ),
              title: Text(
                'Cài đặt',
                style: TextStyle(color: Colors.grey[300], fontSize: 20.0),
              ),
              onTap: (){print('Cài đặt');},
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.grey[300],
                size: 30.0,
              ),
              title: Text(
                'Đăng Xuất',
                style: TextStyle(color: Colors.grey[300], fontSize: 20.0),
              ),
              onTap: () => _onAlertButton(context),
            ),
          ]),
    ),);
  }
}


_onAlertButton(context) {
    Alert(
        context: context,
        title: 'Đăng xuất?',
        desc: 'Bạn chắc chứ?',
        buttons: [
          DialogButton(
            child: Text(
              'Không',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () => Navigator.pop(context),
            color: Colors.blue[400],
          ),
          DialogButton(
            child: Text(
              'Đồng ý ',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            color: Colors.blue[400],
          ),
        ]).show();
  }
