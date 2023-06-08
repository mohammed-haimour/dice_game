import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: low_black,
      title: const Text("Roll The Dice"),
    );
  }
}
