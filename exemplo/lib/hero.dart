import 'package:bonfire/bonfire.dart';
import 'package:flutter/rendering.dart';

import 'Player_sprite_sheet.dart';

class GameHero extends SimplePlayer with ObjectCollision {
  
  GameHero(Vector2 position) : super(
    position: position,
    animation: SimpleDirectionAnimation(
      idleLeft: PlayerSpriteSheet.heroIdleLeft, 
      runLeft: PlayerSpriteSheet.heroIdleRight, 
      idleRight: PlayerSpriteSheet.heroRunLeft, 
      runRight: PlayerSpriteSheet.heroRunRight
    ),
    speed: 100, 
    width: 32,
    height: 32,
  )
  {
    setupCollision(
      CollisionConfig(
      collisions: [
        CollisionArea.rectangle(
          size: const Size(32, 32)
          
          ),
      ],
      ),
    );
  }

  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(
      canvas, 
      borderWidth: 2, 
      height: 2,
      align: const Offset(0, -5),
      );
    super.render(canvas);
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }

@override
  void receiveDamage(double damage, from) {
    super.receiveDamage(damage, from);
  }

@override
  void joystickAction(JoystickActionEvent event) {
    if (event.event == ActionEvent.DOWN && event.id == 1) {
      _executeAttack();
    }
    super.joystickAction(event);
  }

void _executeAttack() {
  simpleAttackMelee(
    damage: 20, 
    sizePush: 16/2,
    animationLeft: PlayerSpriteSheet.attackLeft,
    animationRight: PlayerSpriteSheet.attackRight,
    animationDown: PlayerSpriteSheet.attackBottom,
    animationUp: PlayerSpriteSheet.attackTop,
    height: 16 * 0.8,
    width: 16 * 0.8,
    );
  }
}