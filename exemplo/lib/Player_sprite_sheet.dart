import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet {
   static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
    'map8/fHero_.png', 
    SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24), texturePosition: Vector2(96,0),),);

    static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
    'map8/fHero_.png', SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24), texturePosition: Vector2(0,0),), );

    static Future<SpriteAnimation> get heroRunRight => SpriteAnimation.load(
    'map8/fHero_.png', SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24), texturePosition: Vector2(0,48),),);

    static Future<SpriteAnimation> get heroRunLeft => SpriteAnimation.load(
    'map8/fHero_.png',  SpriteAnimationData.sequenced(amount: 1, stepTime: 0.15, textureSize: Vector2(24,24), texturePosition: Vector2(96,48),),);

    //ataque attackLeft
    static Future<SpriteAnimation> get attackLeft => SpriteAnimation.load(
    'map8/atack_effect_left.png', SpriteAnimationData.sequenced(amount: 3, stepTime: 0.1, textureSize: Vector2(16,16),),);

    //ataque attackRight
    static Future<SpriteAnimation> get attackRight => SpriteAnimation.load(
    'map8/atack_effect_right.png', SpriteAnimationData.sequenced(amount: 3, stepTime: 0.1, textureSize: Vector2(16,16),),);

    //ataque attacbottom
    static Future<SpriteAnimation> get attackBottom => SpriteAnimation.load(
    'map8/atack_effect_bottom.png', SpriteAnimationData.sequenced(amount: 3, stepTime: 0.1, textureSize: Vector2(16,16),),);

    //ataque attacTop
    static Future<SpriteAnimation> get attackTop => SpriteAnimation.load(
    'map8/atack_effect_top.png', SpriteAnimationData.sequenced(amount: 3, stepTime: 0.1, textureSize: Vector2(16,16),),);
}