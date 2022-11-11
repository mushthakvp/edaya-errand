import 'package:flutter/cupertino.dart';

class LoginFunction {
  static final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkPAssword() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    // String email = emailController.text.trim();
    // String password = passwordController.text.trim();
  }
}
