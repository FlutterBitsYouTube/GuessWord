import '../controllers/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_size_text/auto_size_text.dart';

class GuessedLetters extends ConsumerWidget {
  const GuessedLetters({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('guessed letters called');
    String guessedLettersText = ref.read(gameController.notifier).getFormattedGuessedLetters();

    return Center(
      child: SizedBox(
        width: 500,
        height: 60,
        child: Center(
          child: AutoSizeText(
            guessedLettersText,
            style: const TextStyle(color: Colors.white, fontSize: 35),
          ),
        ),
      ),
    );
  }
}
