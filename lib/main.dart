import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game_engine.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GameWidget(
      game: MyGame(),
    ),
  );
}
