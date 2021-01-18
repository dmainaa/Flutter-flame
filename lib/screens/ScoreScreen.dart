

import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flame/SaveRedSquare.dart';
import 'package:flutter_flame/screens/BaseScreen.dart';
import 'package:flutter_flame/screens/ScreenState.dart';

class ScoreScreen extends BaseScreen{

  static const yellow = PaletteEntry(Colors.blue);
  Size size = Size(0, 0);
  @override
  void render(Canvas canvas) {

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), yellow.paint);

  }

  @override
  void onTapDown(TapDownDetails details) {

    print('The score screen has been tapped');

    saveRedSquare.switchScreen(ScreenState.kPlayGroundScreen);


  }

  @override
  void resize(Size size) {
      this.size = size;
  }

  @override
  void update() {

  }
}