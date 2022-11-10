import 'package:edaya_errand/feature/onboard/presentation/onboard_bloc/onboard_bloc.dart';
import 'package:edaya_errand/feature/onboard/presentation/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/size_config.dart';
import '../domain/onboarding_contents.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocBuilder<OnboardBloc, OnboardState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: colors[state.currentPage],
          body: OnboardBody(state: state),
        );
      },
    );
  }
}
