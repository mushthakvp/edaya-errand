import 'dart:developer';

import 'package:edaya_errand/feature/home/domain/home_service.dart';
import 'package:edaya_errand/feature/home/domain/model/hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

// @LazySingleton(as: HomeService)
@injectable
class HiveImplementation implements HomeService {
  @override
  Future<void> addUserDetails({required UserModel value}) async {
    Box<UserModel> obj = await Hive.openBox<UserModel>("edaya");
    log(value.toString());
    log(value.id.toString());
    await obj.put(value.id.toString(), value);
  }

  @override
  Future<void> deleteUserDetails({required String id}) async {
    Box<UserModel> obj = await Hive.openBox<UserModel>("edaya");
    await obj.delete(id);
  }

  @override
  Future<List<UserModel>> fetchUserDetails() async {
    Box<UserModel> obj = await Hive.openBox<UserModel>("edaya");
    return obj.values.toList();
  }
}


