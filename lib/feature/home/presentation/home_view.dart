import 'package:edaya_errand/feature/home/presentation/widgets/addBottomSheet.dart';
import 'package:flutter/material.dart';
import '../../../core/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text("Edaya"),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gColor1, gColor2],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.white,
              builder: (context) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: UserAddBottomSheet(),
                );
              },
            );
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
