import './controllers/game_controller.dart';
import './models/game_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'components/components.dart';
// ignore_for_file: prefer_const_constructors

class GameBody extends ConsumerWidget {
  const GameBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Game game = ref.watch(gameController);
    bool showWinningWidget = false;
    if (game.gameWon && game.initialized) {
      showWinningWidget = true;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DrawGameWord(),
          GuessLetter(),
          GuessedLetters(),
          showWinningWidget ? const GameWinningWidget() : const SizedBox(),
          GameStartButton(),
          SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
