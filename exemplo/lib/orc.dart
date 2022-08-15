import 'dart:ui';

import 'package:bonfire/bonfire.dart';
import 'package:exemplo/Player_sprite_sheet.dart';
import 'package:exemplo/main.dart';
import 'package:exemplo/orc_sprite_sheet.dart';

class Orc extends SimpleEnemy with ObjectCollision {
  Orc(Vector2 position) : super(
    position: position, 
    animation: SimpleDirectionAnimation(
      idleLeft: OrcSpriteSheet.idleLeft, 
      idleRight: OrcSpriteSheet.idleRight, 
      runRight: OrcSpriteSheet.runLeft, 
      runLeft: OrcSpriteSheet.runRight,
      ),
       speed: 70, 
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
void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        _executeAttack();
      },
      radiusVision: titleSize * 4,
      margin: 4,
      );
    super.update(dt);
  }

void _executeAttack() {
  simpleAttackMelee(
    damage: 30, 
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