import 'package:edaya_errand/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'feature/onboard/presentation/onboard_bloc/onboard_bloc.dart';
import 'feature/onboard/presentation/onboard_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardBloc()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: Routes.navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: TextTheme(
                button: TextStyle(fontSize: 45.sp),
              ),
            ),
            home: const OnboardingScreen(),
          );
        },
      ),
    );
  }
}
