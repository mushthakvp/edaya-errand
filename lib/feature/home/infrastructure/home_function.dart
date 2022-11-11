import 'package:edaya_errand/feature/home/domain/model/hive_model.dart';
import 'package:edaya_errand/feature/home/presentation/home_bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeFunctions {
  static TextEditingController emailController = TextEditingController();
  static TextEditingController firstNameController = TextEditingController();
  static TextEditingController lastNameController = TextEditingController();

  void addUserData(BuildContext context) async {
    String name = firstNameController.text.trim();
    String email = emailController.text.trim();
    String lastName = lastNameController.text.trim();
    int id = DateTime.now().microsecondsSinceEpoch;

    UserModel data = UserModel(
      id: id,
      firstName: name,
      lastName: lastName,
      email: email,
    );

    context.read<HomeBloc>().add(HomeEvent.addDetails(userList: data));
  }
}
