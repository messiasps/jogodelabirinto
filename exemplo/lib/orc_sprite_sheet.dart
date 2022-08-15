import 'package:bonfire/bonfire.dart';

class OrcSpriteSheet {
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
    'map8/orc_.png', 
    SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24),
      texturePosition: Vector2(96,0),
    ),
    );

    static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
    'map8/orc_.png', 
    SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24),
      texturePosition: Vector2(0,0),
    ),
    );

    static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
    'map8/orc_.png', 
    SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24),
      texturePosition: Vector2(0,48),
    ),
    );

    static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
    'map8/orc_.png', 
    SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24),
      texturePosition: Vector2(96,48),
    ),
    );
}