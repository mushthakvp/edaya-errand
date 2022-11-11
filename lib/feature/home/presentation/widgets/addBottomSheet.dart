// ignore_for_file: file_names
import 'package:edaya_errand/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/colors.dart';
import '../../infrastructure/home_function.dart';

class UserAddBottomSheet extends StatelessWidget {
  const UserAddBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: HomeFunctions.firstNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter first name';
              }
              return null;
            },
            decoration: inputDecoration("First name"),
            cursorColor: gColor1,
          ),
          SizedBox(height: 15.h),
          TextFormField(
            controller: HomeFunctions.lastNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter last name';
              }
              return null;
            },
            decoration: inputDecoration("Last name"),
            cursorColor: gColor1,
          ),
          SizedBox(height: 15.h),
          TextFormField(
            controller: HomeFunctions.emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter email';
              }
              return null;
            },
            decoration: inputDecoration("Email"),
            cursorColor: gColor1,
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              buttons(
                size,
                () {
                  HomeFunctions().addUserData(context);
                },
                "SUBMIT",
                2,
              ),
              SizedBox(width: 15.w),
              buttons(
                size,
                () {
                  Routes.back();
                },
                "CANCEL",
                1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Expanded buttons(Size size, Function() function, String text, int flex) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: function,
        focusColor: Colors.white,
        hoverColor: Colors.white,
        child: Container(
          height: 54,
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
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      labelStyle: TextStyle(color: black),
      labelText: label,
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: gColor1.withOpacity(.2)),
      ),
    );
  }
}
