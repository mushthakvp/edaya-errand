import 'package:edaya_errand/feature/login/presentation/widgets/sign_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/colors.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gColor1, gColor2],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .05.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600,
                      fontSize: 30.sp,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    "Sign in!",
                    style: TextStyle(
                      fontFamily: "Mulish",
                      fontWeight: FontWeight.w600,
                      fontSize: 30.sp,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * .06.h),
            SignifiedWidget(size: size)
          ],
        ),
      ),
    );
  }
}
