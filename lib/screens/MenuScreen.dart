
import 'package:flame/palette.dart';

import 'package:flutter/material.dart';
import 'package:flutter_flame/SaveRedSquare.dart';
import 'package:flutter_flame/controllers/TextedButton.dart';
import 'package:flutter_flame/screens/BaseScreen.dart';
import 'package:flutter_flame/screens/ScreenState.dart';

class MenuScreen extends BaseScreen{

  TextedButton _startButton;


  MenuScreen(){
    _startButton = TextedButton(0.5, 0.5, "Start");

  }

  Size size = Size(0,0);

  @override
  void render(Canvas canvas) {

    _startButton.render(canvas);
  }


  @override
  void onTapDown(TapDownDetails details) {
    _startButton.onTapDown(details, (){
      saveRedSquare.switchScreen(ScreenState.kPlayGroundScreen);
    });

  }

  @override
  void resize(Size size) {
      _startButton.resize(size);
  }

  @override
  void update() {
      _startButton.update();
  }


}