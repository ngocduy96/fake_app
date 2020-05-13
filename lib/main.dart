import 'package:fake_app/src/source/loginpage/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:fake_app/src/app.dart';
import 'package:fake_app/src/blocs/auth_bloc.dart';
import 'package:fake_app/src/source/loginpage/login_page.dart';

void main() => runApp(MyApp(new AuthBloc(), MaterialApp(
  home: WelcomePage(),
)));

