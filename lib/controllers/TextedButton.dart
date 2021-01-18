

import 'package:flutter/material.dart';
import 'package:flutter_flame/controllers/BaseWidget.dart';
import 'package:flutter/cupertino.dart';

class TextedButton extends BaseWidget{

  final double _xRatio;
  final double _yRatio;

  final String text;

  TextPainter _painter;
  TextStyle  _textStyle;

  Offset _position;






  TextedButton(this._xRatio, this._yRatio, this.text){
    _painter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr
    );

    _textStyle = TextStyle(
      color: Colors.white,
      fontSize: 0
    );

    _painter.text = TextSpan(text: text, style: _textStyle);

    _painter.layout();
    _position = Offset(0,0);


  }

  @override
  void render(Canvas canvas) {
    _painter.paint(canvas, _position);
  }

  @override
  void onTapDown(TapDownDetails details, Function fn) {
    var pos = details.globalPosition;

    if(pos.dx > _position.dx && pos.dx <= _position.dx + _painter.width){
      if(pos.dy >= _position.dy && pos.dy <= _position.dy + _painter.height){
        fn();
      }
    }

  }

  @override
  void resize(Size size) {

    _textStyle = TextStyle(
        color: Colors.white,
        fontSize: size.width * 0.1

    );

    _painter.text = TextSpan(text: text, style: _textStyle);

    _painter.layout();

    _position = Offset(
      size.width * _xRatio  - (_painter.width * _xRatio),
      size.height* _yRatio - (_painter.height * _yRatio)
    );
  }

  @override
  void update() {

  }
}

