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
      0, // Horizontally centered in world coordinates
      -gameRef.size.y / 2 + circleRadius, // Start at the top of the world
    );
  }

  @override
  void update(double dt) {
    super.update(dt);

    // Move the circle down by 100 pixels per second
    position.y += 100 * dt;

    // Reset the position if it falls below the screen
    if (position.y > gameRef.size.y / 2) {
      position.y = -gameRef.size.y / 2 + circleRadius; // Restart at the top
    }
  }
}
