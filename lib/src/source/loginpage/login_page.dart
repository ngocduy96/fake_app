import 'package:flutter/material.dart';
import 'package:fake_app/src/app.dart';
import 'package:fake_app/src/blocs/login_bloc.dart';
import 'package:fake_app/src/source/dialog/loading_dialog.dart';
import 'package:fake_app/src/source/dialog/msg_dialog.dart';
import 'package:fake_app/src/source/home/home_page.dart';
import 'package:fake_app/src/source/loginpage/forgotpass.dart';
import 'package:fake_app/src/source/loginpage/sign_upscreen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  LoginBloc bloc = new LoginBloc();

  bool _showPass = false;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.only(top: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: new Image.asset(
                  'assets/image01.png',
                  height: 280,
                  width: 250,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: StreamBuilder(
                    stream: bloc.userStream,
                    builder: (context, snapshot) => TextField(
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        controller: _emailController,
                        decoration: InputDecoration(
                            labelText: "EMAIL",
                            errorText:
                                snapshot.hasError ? snapshot.error : null,
                            labelStyle: TextStyle(
                                color: Color(0xff888888), fontSize: 15))),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    StreamBuilder(
                        stream: bloc.passStream,
                        builder: (context, snapshot) => TextField(
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            controller: _passController,
                            obscureText: !_showPass,
                            decoration: InputDecoration(
                                labelText: "PASSWORLD",
                                errorText:
                                    snapshot.hasError ? snapshot.error : null,
                                labelStyle: TextStyle(
                                    color: Color(0xff888888), fontSize: 15)))),
                    GestureDetector(
                      onTap: onToggleShowPass,
                      child: Text(
                        _showPass ? "HIDE" : "SHOW",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: onSignInClicked,
                    child: Text("Sign In",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                  ),
                ),
              ),
              Container(
                height: 110,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.fromLTRB(10, 0,0, 0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      child: Text(
                        "NEW USER?SIGN UP",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff888888)),
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPass()),
                        );
                      },
                      child: Text(
                        "FORGOT PASSWORLD?",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 40,
                  child: Center(
                      child: FlatButton(
                    child: Text(
                      'Or login with...',
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                    onPressed: () => _showAlert(context),
                  ))),
            ],
          ),
        ),
      ),
    );
  }

  _showAlert(context) {
    Alert(
        context: context,
        title: 'Sign In with:',
        content: Column(
          children: <Widget>[
            SignInButton(
              Buttons.Apple,
              onPressed: () {
                _showButtonPressDialog(context, 'Apple');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                _showButtonPressDialog(context, 'Google');
              },
            ),
            Divider(),
            SignInButton(
              Buttons.Facebook,
              onPressed: () {
                _showButtonPressDialog(context, 'Facebook');
              },
            ),
          ],
        )).show();
  }

  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClicked() {
    String email = _emailController.text;
    String pass = _passController.text;
    var authBloc = MyApp.of(context).authBloc;
    LoadingDialog.showLoadingDialog(context,"Loading..." );
    authBloc.signIn(email, pass, (){
      LoadingDialog.hideLoadingDialog(context);
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
    }, (msg){
      LoadingDialog.hideLoadingDialog(context);
      MsgDialog.showMsgDialog(context, "Sign-In", msg);
    });
  }

  
}
