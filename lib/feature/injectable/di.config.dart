// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../home/domain/home_service.dart' as _i5;
import '../home/infrastructure/hive_implementation.dart' as _i4;
import '../home/presentation/home_bloc/home_bloc.dart' as _i3;
import '../onboard/presentation/onboard_bloc/onboard_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.HomeBloc>(() => _i3.HomeBloc(get<_i4.HiveImplementation>()));
  gh.lazySingleton<_i5.HomeService>(() => _i4.HiveImplementation());
  gh.factory<_i6.OnboardBloc>(() => _i6.OnboardBloc());
  return get;
}
