import '../controllers/game_controller.dart';
import '../models/game_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameStartButton extends ConsumerWidget {
  const GameStartButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Game game = ref.watch(gameController);
    String buttonText = game.gameWon ? 'New Game' : 'Restart';
    return Center(
      child: ElevatedButton(
          onPressed: () {
            ref.read(gameController.notifier).initializer();
          },
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          )),
    );
  }
}
