import 'package:hive_flutter/hive_flutter.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 1)
class UserModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String firstName;
  @HiveField(2)
  final String lastName;
  @HiveField(3)
  final String email;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
  });
}
