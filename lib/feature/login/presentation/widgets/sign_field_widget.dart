import 'package:edaya_errand/feature/login/infrastructure/login_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/colors.dart';

class SignifiedWidget extends StatelessWidget {
  final Size size;
  const SignifiedWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
          color: Colors.white,
        ),
        child: Form(
          key: LoginFunction.formKey,
          child: Column(
            children: [
              SizedBox(height: size.height * .06.h),
              TextFormField(
                controller: LoginFunction.emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter valid email';
                  } else if (value != "testapp@google.com") {
                    return "enter correct mail eg :- testapp@google.com";
                  }
                  return null;
                },
                decoration: inputDecoration("Email"),
                cursorColor: gColor1,
              ),
              SizedBox(height: 15.h),
              TextFormField(
                controller: LoginFunction.passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter valid password';
                  } else if (value != "Test@123456") {
                    return "enter correct password eg :- Test@123456";
                  }
                  return null;
                },
                decoration: inputDecoration("Password"),
                cursorColor: gColor1,
              ),
              SizedBox(height: size.height * .04.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Forgot Password?"),
                ],
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  LoginFunction().checkPAssword();
                },
                focusColor: Colors.white,
                hoverColor: Colors.white,
                child: Container(
                  height: 60,
                  width: size.width.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: LinearGradient(
                      colors: [
                        gColor1,
                        gColor2,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: const [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      labelStyle: TextStyle(
        color: gColor1,
        fontWeight: FontWeight.w600,
      ),
      labelText: label,
      contentPadding: const EdgeInsets.symmetric(vertical: 14),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
    );
  }
}
