import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class FallingCircleComponent extends CircleComponent with HasGameRef {
  static const double circleRadius = 20.0;

  FallingCircleComponent()
      : super(
          radius: circleRadius, // Circle radius
          paint: Paint()..color = Colors.red, // Circle color
        ) {
    // Set the anchor to center the circle relative to its position
    anchor = Anchor.center;
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // Start the circle at the top middle of the world
    position = Vector2(
      gameRef.size.x / 2, // Horizontally centered in world coordinates
      0, // Start at the top of the world
    );
  }

  @override
  void update(double dt) {
    super.update(dt);

    // Move the circle down by 100 pixels per second
    position.y += 100 * dt;

    // Reset the position if it falls below the screen
    if (position.y > gameRef.size.y + circleRadius) {
      position.y = -circleRadius; // Restart at the top
    }
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    position.x = gameRef.size.x / 2;
  }
}
