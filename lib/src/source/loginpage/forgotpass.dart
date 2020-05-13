import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fake_app/src/source/email_ok.dart';

class ForgotPass extends StatefulWidget {
  @override
  ForgotPassScreen createState() => new ForgotPassScreen();
}

class ForgotPassScreen extends State<ForgotPass> {
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String _email;

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Text("Tìm lại mật khẩu", style: TextStyle(color: Colors.orange, fontSize: 25.0,),),
      ),
      body: Container(
        color: Colors.black,
        key: _formKey,
        // child: Container(
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        //   margin: EdgeInsets.only(top: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Center(
                  child: CircleAvatar(
                    child: Image.asset('assets/forgotpassicon.png'),
                    radius: 80,
                  ),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Center(
                child: Text(
                  "Nhập email của bạn tại đây",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            TextFormField(
              validator: (input){
                if (input.isEmpty) {
                  return 'Provide an email';
                }
              },
              decoration: InputDecoration(
                labelText: "Email address",
              ),
              // validator: (val)=>!EmailValidator.validate(val, true)?
              //     'Email không hợp lệ'
              //     :null,
              onSaved: (input) => _email = input,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 20, 2, 10),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  onPressed: () {
                    if (EmailValidator.validate(_email)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmailsendScreen()),
                      );
                    }
                  },
                  child: Text("Xác nhận",
                      style: TextStyle(color: Colors.black, fontSize: 17)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
