import 'package:flutter_flame/SaveRedSquare.dart';

import 'package:flutter/cupertino.dart';

abstract class BaseWidget{

  void render(Canvas canvas);
  void update();
  void resize(Size size);
  void onTapDown(TapDownDetails details, Function fn);


}