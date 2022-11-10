import 'package:flutter/cupertino.dart';

class LoginFunction {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkPAssword() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();


  }
}
