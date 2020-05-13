import 'package:fake_app/src/source/dialog/loading_dialog.dart';
import 'package:fake_app/src/source/dialog/msg_dialog.dart';
import 'package:fake_app/src/source/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fake_app/src/blocs/auth_bloc.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  AuthBloc authBloc = new AuthBloc();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _passworldController = new TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(" Đăng kí"),
      ),
      body: Container(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Center(
                  child: Text('Vui lòng điền đầy đủ thông tin bên dưới!',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: StreamBuilder(
                  stream: authBloc.nameStream,
                  builder: (context, snapshot) => TextField(
                        controller: _nameController,
                        style: TextStyle(fontSize: 20.0, color: Colors.orange),
                        decoration: InputDecoration(
                            errorText:
                                snapshot.hasError ? snapshot.error : null,
                            icon: Icon(Icons.person),
                            labelText: 'Họ và Tên'),
                      )),
            ),
            StreamBuilder(
                stream: authBloc.emailStream,
                builder: (context, snapshot) => TextField(
                      controller: _emailController,
                      style: TextStyle(fontSize: 20.0, color: Colors.orange),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          errorText: snapshot.hasError ? snapshot.error : null,
                          icon: Icon(Icons.email),
                          labelText: 'Email của bạn'),
                    )),
            StreamBuilder(
              stream: authBloc.passworldStream,
              builder: (context, snapshot) => TextField(
                controller: _passworldController,
                style: TextStyle(fontSize: 20.0, color: Colors.orange),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    errorText: snapshot.hasError ? snapshot.error : null,
                    icon: Icon(Icons.lock),
                    labelText: 'Mật khẩu đăng nhập'),
              ),
            ),
            StreamBuilder(
              stream: authBloc.phoneStream,
              builder: (context, snapshot) => TextField(
                controller: _phoneController,
                style: TextStyle(fontSize: 20, color: Colors.orange),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    errorText: snapshot.hasError ? snapshot.error : null,
                    icon: Icon(Icons.phone),
                    labelText: 'Số điện thoại'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  onPressed: _onSignUpClicked,
                  child: Text("Đăng kí",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  _onSignUpClicked() {
    var isValid = authBloc.isValid(_nameController.text, _emailController.text,
        _passworldController.text, _phoneController.text);
    if (isValid) {
      //create User
      //loading dialog
      LoadingDialog.showLoadingDialog(context, 'Loading...');
      authBloc.signUp(_emailController.text, _passworldController.text,
          _phoneController.text, _nameController.text, () {
            LoadingDialog.hideLoadingDialog(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },(msg){
        //show msg dialog
         LoadingDialog.hideLoadingDialog(context);
         MsgDialog.showMsgDialog(context, "Sign-In ", msg);
      }
      );
    }
  }
}
