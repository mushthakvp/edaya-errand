part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchDetails() = _FetchDetails;
  const factory HomeEvent.addDetails({required UserModel userList}) = _AddDetails;
  const factory HomeEvent.deleteDetails({required String id}) = _DeleteDetails;
}