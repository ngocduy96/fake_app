import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirAuth {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  

  void signUp(String email, String pass, String name, String phone,
      Function onSuccess, Function(String) onRegisterError) {
    _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: pass)
        .then((user) {

      _createUser(user.user.uid, name, phone,email, onSuccess, onRegisterError);
      print(user);

    }).catchError((err) {
      _onSignUpErr(err.code, onRegisterError);
    });
  }

  _createUser(String userID, String name, String phone,String email, Function onSuccess,
      Function(String) onRegisterError) {
    var user = {"name": name, "phone": phone, "email": email};
    var ref = FirebaseDatabase.instance.reference().child("users");
    ref.child(userID).set(user).then((user) {
      //success
      onSuccess();
    }).catchError((err) {
      onRegisterError("SignUp Fail, please try again");
    });
  }

  void signIn(String email, String pass, Function onSuccess, Function(String) onSignInError){
    _firebaseAuth.signInWithEmailAndPassword(email: email, password: pass).then((user){
      print("on sign in success");
      onSuccess();
    }).catchError((err){
      onSignInError("SignIn-fail, try again!");
    });
  }

  void _onSignUpErr(String code, Function(String) onRegisterError) {
    switch(code) {
      case "ERROR_INVALID_EMAIL":
        onRegisterError("Invalid email");
       break;
      case "ERROR_INVALID_CREDENTIAL":
         onRegisterError("Invalid email");
        break;
      case "ERROR_EMAIL_ALREADY_IN_USE":
         onRegisterError("Email has existed");
        break;
      case "ERROR_WEAK_PASSWORD":
         onRegisterError("The password is not strong enough");
        break;
      default:
        onRegisterError("SignUp Fail, please try again");
      break;
    }
  }
}
