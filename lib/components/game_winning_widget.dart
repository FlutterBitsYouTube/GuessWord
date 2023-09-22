import 'package:flutter/material.dart';

class GameWinningWidget extends StatelessWidget {
  const GameWinningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 500,
        height: 60,
        child: Center(
            child: Text(
          'You Have Won!!',
          style: TextStyle(color: Colors.white, fontSize: 35),
        )),
      ),
    );
  }
}
