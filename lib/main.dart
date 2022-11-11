import 'package:edaya_errand/feature/home/domain/model/hive_model.dart';
import 'package:edaya_errand/feature/home/presentation/home_bloc/home_bloc.dart';
import 'package:edaya_errand/feature/injectable/di.dart';
import 'package:edaya_errand/routes/messenger.dart';
import 'package:edaya_errand/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'feature/onboard/presentation/onboard_bloc/onboard_bloc.dart';
import 'feature/onboard/presentation/onboard_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(UserModelAdapter().typeId)) {
    Hive.registerAdapter(UserModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardBloc()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: Routes.navigatorKey,
            scaffoldMessengerKey: Messenger.scaffoldKey,
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
