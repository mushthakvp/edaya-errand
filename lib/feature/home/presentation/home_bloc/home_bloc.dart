import 'package:edaya_errand/feature/home/infrastructure/hive_implementation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/model/hive_model.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HiveImplementation hiveimpl;
  HomeBloc(this.hiveimpl) : super(HomeState.initial()) {
    on<_FetchDetails>((event, emit) async {
      if (state.userList.isNotEmpty) {
        emit(state.copyWith(
            isLoading: state.isLoading, userList: state.userList));
        return;
      }
      emit(state.copyWith(isLoading: true, userList: []));
      List<UserModel> userList = await hiveimpl.fetchUserDetails();
      return emit(state.copyWith(isLoading: false, userList: userList));
    });

    on<_AddDetails>((event, emit) async {
      await hiveimpl.addUserDetails(value: event.userList);
      List<UserModel> userList = await hiveimpl.fetchUserDetails();
      return emit(state.copyWith(isLoading: false, userList: userList));
    });

    on<_DeleteDetails>((event, emit) async {
      await hiveimpl.deleteUserDetails(id: event.id);
      List<UserModel> userList = await hiveimpl.fetchUserDetails();
      return emit(state.copyWith(isLoading: false, userList: userList));
    });
  }
}
