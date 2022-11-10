import 'package:edaya_errand/feature/onboard/presentation/widgets/dot_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/size_config.dart';
import '../../../../routes/routes.dart';
import '../../../login/presentation/login_view.dart';
import '../../domain/onboarding_contents.dart';
import '../onboard_bloc/onboard_bloc.dart';

class OnboardBody extends StatelessWidget {
  final OnboardState state;
  const OnboardBody({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: state.controller,
              onPageChanged: (value) {
                context
                    .read<OnboardBloc>()
                    .add(OnboardEvent.index(value: value));
              },
              itemCount: contents.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: SizeConfig.blockV! * 35,
                      ),
                      SizedBox(
                        height: (height >= 840) ? 60 : 30,
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w600,
                          fontSize: (width <= 550) ? 30 : 35,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        contents[i].desc,
                        style: TextStyle(
                          fontFamily: "Mulish",
                          fontWeight: FontWeight.w300,
                          fontSize: (width <= 550) ? 17 : 25,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (int index) =>
                        DotWidget(index: index, stateValue: state.currentPage),
                  ),
                ),
                state.currentPage + 1 == contents.length
                    ? Padding(
                        padding: const EdgeInsets.all(30),
                        child: ElevatedButton(
                          onPressed: () {
                            Routes.pushreplace(screen: const LoginView());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: (width <= 550)
                                ? const EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 20)
                                : EdgeInsets.symmetric(
                                    horizontal: width * 0.2, vertical: 25),
                            textStyle:
                                TextStyle(fontSize: (width <= 550) ? 13 : 17),
                          ),
                          child: const Text("START"),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                state.controller!.jumpToPage(2);
                              },
                              style: TextButton.styleFrom(
                                elevation: 0,
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: (width <= 550) ? 13 : 17,
                                ),
                              ),
                              child: const Text(
                                "SKIP",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                state.controller!.nextPage(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeIn,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                elevation: 0,
                                padding: (width <= 550)
                                    ? const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 20)
                                    : const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 25),
                                textStyle: TextStyle(
                                    fontSize: (width <= 550) ? 13 : 17),
                              ),
                              child: const Text("NEXT"),
                            ),
                          ],
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
