import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'components/background_component.dart'; // Background component
import 'components/falling_circle_component.dart'; // Falling circle component

class MyGame extends FlameGame {
  late BackgroundComponent background;
  late FallingCircleComponent fallingCircle;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    camera.backdrop.add(BackgroundComponent());

    FallingCircleComponent fallingCircle = FallingCircleComponent();
    world.add(fallingCircle);
  }
}
