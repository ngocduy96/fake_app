import 'package:flutter/material.dart';
import 'package:fake_app/src/blocs/auth_bloc.dart';
class MyApp extends InheritedWidget {
  final AuthBloc authBloc;
  final Widget child;
  MyApp(this.authBloc, this.child) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWiget){
    return false;
  }
  static MyApp of(BuildContext context){
    return context.inheritFromWidgetOfExactType(MyApp);
  }
}