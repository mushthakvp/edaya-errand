import 'package:flutter/material.dart';

class Messenger {
  static final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  static pop({required String msg, Color? color}) {
    Size size =
        MediaQuery.of(scaffoldKey.currentState!.context).size;
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        duration: const Duration(milliseconds: 1500),
        behavior: SnackBarBehavior.floating,
        backgroundColor: color,
        margin: EdgeInsets.only(bottom: size.height - 130, right: 20, left: 20),
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            msg,
            style: const TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
