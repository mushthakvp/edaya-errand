part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<UserModel> userList,
    required bool isLoading,
  }) = _HomeState;

  factory HomeState.initial() =>
      const HomeState(userList: [], isLoading: false);
}
