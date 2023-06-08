import 'dart:math';
import 'package:dice_game/widgets/constants/constants.dart';
import 'package:dice_game/widgets/reusable_widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/constants/colors.dart';

class RollTheDice extends StatefulWidget {
  const RollTheDice({super.key});

  @override
  State<RollTheDice> createState() => _RollTheDiceState();
}

class _RollTheDiceState extends State<RollTheDice> {
  Random rng = Random();
  // ignore: non_constant_identifier_names
  roll_dice() {
    setState(() {
      current_image = dice_images[rng.nextInt(6)];
    });
  }

  // ignore: non_constant_identifier_names
  var current_image = "assets/images/dice-images/dice-1.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: MyAppBar(title: "Roll The Dice"),
      ),
      backgroundColor: black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            current_image,
            width: 200,
          ),
          ElevatedButton.icon(
            label: const Text("Roll The Dice"),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(low_black)),
            icon: const Icon(
              Icons.flip,
              color: Colors.amber,
            ),
            onPressed: () {
              roll_dice();
            },
          )
        ],
      )),
    );
  }
}
