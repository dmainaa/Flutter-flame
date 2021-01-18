

import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_flame/screens/BaseScreen.dart';
import 'package:flutter_flame/screens/MenuScreen.dart';
import 'package:flutter_flame/screens/PlayGround.dart';
import 'package:flutter_flame/screens/ScoreScreen.dart';
import 'package:flutter_flame/screens/ScreenState.dart';

SaveRedSquare saveRedSquare = SaveRedSquare();

class SaveRedSquare extends Game with TapDetector{

  ScreenState _screenState;

  BaseScreen _menuScreen;
  BaseScreen _playGroundScreen;
  BaseScreen _scoreScreen;


  SaveRedSquare(){
    _screenState = ScreenState.kMenuScreen;

    _menuScreen = MenuScreen();

    _playGroundScreen = PlayGround();

    _scoreScreen = ScoreScreen();

  }

  @override
  void update(double t) {
    _getActiveScreen()?.update();


  }

  @override
  void render(Canvas canvas) {
    _getActiveScreen()?.render(canvas);

  }

  @override
  void resize(Size size) {
    _menuScreen?.resize(size);
    _playGroundScreen?.resize(size);
    _scoreScreen?.resize(size);

  }

  @override
  void onTapDown(TapDownDetails details) {

    _getActiveScreen()?.onTapDown(details);

  }

  BaseScreen _getActiveScreen(){
    switch(_screenState){
      case ScreenState.kMenuScreen:
        return _menuScreen;
      case ScreenState.kPlayGroundScreen:
        return _playGroundScreen;

      case ScreenState.kScoreScreen:
        return _scoreScreen;
    }
  }

  void switchScreen(ScreenState  newscreen){

    _screenState = newscreen;
  }
}