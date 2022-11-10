import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final int index;
  final int stateValue;
  const DotWidget({super.key, required this.index, required this.stateValue});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF000000),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: stateValue == index ? 20 : 10,
    );
  }
}
