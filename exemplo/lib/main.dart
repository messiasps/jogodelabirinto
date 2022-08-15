import 'package:bonfire/bonfire.dart';
import 'package:exemplo/hero.dart';
import 'package:exemplo/orc.dart';
import 'package:flutter/material.dart';

final double titleSize = 32;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(
          color: Colors.red,
        ),
        actions: [
          JoystickAction(
            actionId: 1, 
            color: Colors.red,
            margin: EdgeInsets.all(40),
            ),
        ]
      ),
      map: TiledWorldMap('map8/mapa.json', 
        forceTileSize: Size(titleSize,titleSize),
        objectsBuilder: {
          'orc':(properties)=>Orc(properties.position),
        }
      ),
      player: GameHero(Vector2(18*titleSize,14*titleSize)),
      
    );
  }
}