class Validations{
  static bool isValiUser(String user){
    return user != null && user.length >6 && user.contains("@");
  }
  static bool isValipass(String pass){
    return pass != null && pass.length >6;
  }
}