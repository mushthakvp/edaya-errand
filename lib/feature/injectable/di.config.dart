// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../home/infrastructure/hive_implementation.dart' as _i3;
import '../home/presentation/home_bloc/home_bloc.dart' as _i4;
import '../onboard/presentation/onboard_bloc/onboard_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.HiveImplementation>(() => _i3.HiveImplementation());
  gh.factory<_i4.HomeBloc>(() => _i4.HomeBloc(get<_i3.HiveImplementation>()));
  gh.factory<_i5.OnboardBloc>(() => _i5.OnboardBloc());
  return get;
}
