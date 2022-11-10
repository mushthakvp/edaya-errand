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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .06.h),
            TextFormField(
              decoration: inputDecoration("Email"),
              cursorColor: gColor1,
            ),
            SizedBox(height: 15.h),
            TextFormField(
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
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Don't have an account?"),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: gColor2,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.h),
          ],
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
