

import 'package:flame/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame/SaveRedSquare.dart';
import 'package:flutter_flame/controllers/RedSquare.dart';
import 'package:flutter_flame/screens/BaseScreen.dart';
import 'package:flutter_flame/screens/ScreenState.dart';

class PlayGround extends BaseScreen{

  RedSquare redSquare;


  PlayGround(){
    redSquare = RedSquare();

  }

  Size size = Size(0,0);


  @override
  void render(Canvas canvas) {
    redSquare.render(canvas);
  }

  @override
  void resize(Size size) {

    redSquare.resize(size);

  }

  @override
  void update() {
    redSquare.update();
  }

  @override
  void onTapDown(TapDownDetails details) {
    redSquare.onTapDown(details, (){

    });
  }
}