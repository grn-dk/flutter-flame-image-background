import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'components/background_component.dart'; // Background component
import 'components/falling_circle_component.dart'; // Falling circle component

class MyGame extends FlameGame {
  late BackgroundComponent background;
  late FallingCircleComponent fallingCircle;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    await Flame.images.load('background.jpg');

    // Initialize and add the background component
    background = BackgroundComponent();
    add(background);

    // Initialize and add the falling circle component
    fallingCircle = FallingCircleComponent();
    add(fallingCircle);
  }
}
