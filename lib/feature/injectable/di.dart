import 'package:edaya_errand/feature/injectable/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureInjection() async {
  return $initGetIt(getIt, environment: Environment.dev);
}
