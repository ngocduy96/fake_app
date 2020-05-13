import 'dart:async';
import 'package:fake_app/src/fire_base/fire_base_auth.dart';

class AuthBloc {
  var _firAuth = FirAuth();
  StreamController _nameController = new StreamController();
  StreamController _emailController = new StreamController();
  StreamController _passworldController = new StreamController();
  StreamController _phoneController = new StreamController();

  Stream get nameStream => _nameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get phoneStream => _phoneController.stream;
  Stream get passworldStream => _passworldController.stream;

  bool isValid(String name, String email, String passworld, String phone){
    if(name == null || name.length == 0){
      _nameController.sink.addError("Nhập tên");
      return false;
    }
    _nameController.sink.add("");


    if(email == null || email.length == 0){
      _emailController.sink.addError("Nhập email");
      return false;
    }
     _emailController.sink.add("");
     

    if(passworld == null || passworld.length < 5){
      _passworldController.sink.addError("Nhập passworld trên 5 kí tự");
      return false;
    }
    _passworldController.sink.add("");


    if(phone == null || phone.length == 0){
      _phoneController.sink.addError("Nhập sdt");
      return false;
    }
    _phoneController.sink.add("");
    
    return true;
  }

 void signUp(String email, String pass, String phone, String name, Function onSuccess, Function(String) onRegisterError){
   _firAuth.signUp(email, pass,name, phone, onSuccess, onRegisterError);
 }
 
 void signIn(String email, String pass, Function onSuccess, Function(String) onSignInError){
   _firAuth.signIn(email, pass, onSuccess,onSignInError );
 }


  void dispose(){
    _nameController.close();
    _emailController.close();    
    _passworldController.close();
    _phoneController.close();
  }
}