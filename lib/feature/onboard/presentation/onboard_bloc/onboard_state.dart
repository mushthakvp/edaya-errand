part of 'onboard_bloc.dart';

@freezed
class OnboardState with _$OnboardState {
  factory OnboardState({required int currentPage, PageController? controller}) =
      _OnboardState;
  factory OnboardState.initial() =>
      OnboardState(currentPage: 0, controller: PageController());
}
