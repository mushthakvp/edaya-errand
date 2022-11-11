import 'package:edaya_errand/feature/home/domain/model/hive_model.dart';

abstract class HomeService {
  Future<void> addUserDetails({required UserModel value});
  Future<List<UserModel>> fetchUserDetails();
  Future<void> deleteUserDetails({required String id});
}
