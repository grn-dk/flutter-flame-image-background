import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'components/background_component.dart';
import 'components/falling_circle_component.dart';

class MyGame extends FlameGame {
  late BackgroundComponent background;
  late FallingCircleComponent fallingCircle;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    //In our case we would like to have our camer anchor in top left corner : 0,0
    camera.viewfinder.anchor = Anchor.topLeft;
    // Other option 
    //camera.viewfinder.position = size/2;
    
    camera.backdrop.add(BackgroundComponent());
    world.add(FallingCircleComponent());
  }
}
