import 'package:flame/palette.dart';
import 'package:flutter_flame/controllers/BaseWidget.dart';
import 'package:flutter/material.dart';

class RedSquare extends BaseWidget{

  static const blue = PaletteEntry(Colors.blue);
  static const red = PaletteEntry(Colors.red);

  double _x;
  double _y;

  double _horizontalSpeed = 5;

  double _horizontalSign = 1;

  double _verticalSpeed = 0;

  double _verticalSign = 1;

  

  double _width;
  double _height;

  Size size = Size(0,0);


  @override
  void render(Canvas canvas) {
      canvas.drawRect(Rect.fromLTWH(_x, _y, _width, _height), (isSquareSafe()? blue.paint : red.paint));
  }

  @override
  void onTapDown(TapDownDetails details, Function fn) {

  }

  @override
  void resize(Size size) {
    this.size = size;


    final ratio = size.height / size.width;

    _width = size.width * 0.1 * ratio;

    _height =  size.height * 0.1;

    _x = 0;

    _y = (size.height - _height)/2;


  }

  @override
  void update() {
    _updateSpeed();
    calcSign();
    _calcPosition();
  }

  void _updateSpeed(){
    if(_horizontalSpeed < 10){

      _horizontalSpeed += 0.001;
    }

    if(_horizontalSpeed > 6 && _horizontalSpeed < 10){
      _verticalSpeed += 0.002;

    }
  }
  bool isSquareSafe(){
    return isXSafe();
  }
  bool isXSafe(){

    if(( _x < size.width - _width * 2) && _x> _width){
      return true;
    }return false;
  }

  bool isYSafe(){
    if(_y < size.height - _height * 2 && _y > _height){
      return true;
    }return false;
  }

  void _calcPosition(){

    _x += _horizontalSpeed * _horizontalSign;

    _y += _verticalSpeed * _verticalSign;

  }

  void calcSign(){

    if(_x > size.width - _width){

      _horizontalSign = -1;

    }else if(_x < _horizontalSpeed){

      _horizontalSign = 1;

    }

    if(_y > size.height - _height){

      _verticalSign = -1;
    }else if(_y < _verticalSpeed){
      _verticalSign = 1;
    }


  }
}