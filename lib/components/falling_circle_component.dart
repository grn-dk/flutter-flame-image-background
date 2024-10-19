import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class FallingCircleComponent extends CircleComponent with HasGameRef {
  static const double circleRadius = 20.0;

  FallingCircleComponent()
      : super(
          radius: circleRadius, // Circle radius
          paint: Paint()..color = Colors.red, // Circle color
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();

    position = Vector2(
        size.x / 2 - circleRadius, 0); // Start at the top middle of the screen
  }

  @override
  void update(double dt) {
    super.update(dt);

    // Move the circle down by 100 pixels per second
    position.y += 100 * dt;

    // Reset the position if it falls below the screen
    if (position.y > gameRef.size.y) {
      position.y = 0; // Restart at the top
    }
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    position.x = size.x / 2 - circleRadius;
  }
}
