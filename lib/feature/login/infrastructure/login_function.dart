import 'package:edaya_errand/feature/home/presentation/home_view.dart';
import 'package:edaya_errand/routes/routes.dart';
import 'package:flutter/cupertino.dart';

class LoginFunction {
  static final formKey = GlobalKey<FormState>();

  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  void checkPAssword() {
    // if (!formKey.currentState!.validate()) {
    //   return;
    // }
    // String chkEmail = "testapp@google.com";
    // String chkPasswd = "Test@123456";
    // String email = emailController.text.trim();
    // String password = passwordController.text.trim();
    Routes.pushRemoveUntil(screen: const HomeView());
    // if (email == chkEmail && password == chkPasswd) {

    // }
  }
}
