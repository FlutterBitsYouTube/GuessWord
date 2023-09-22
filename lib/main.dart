import 'package:flutter/material.dart';
import 'package:guessword/game_body.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Guess Word',
          ),
        ),
        body: Container(
          color: Colors.blue[200],
          child: const GameBody(),
        ),
      ),
    );
  }
}
