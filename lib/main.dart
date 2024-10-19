import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'game_engine.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Preload image using Flame
  await Flame.images.load('background.jpg');

  runApp(
    GameWidget(
      game: MyGame(),
    ),
  );
}
