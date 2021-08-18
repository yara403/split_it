import 'dart:math';

import 'package:flutter/cupertino.dart';

abstract class AppGradients {
  Gradient get background;
  Gradient get backgroundAppBar;
  Gradient get backgroundCardReceive;
  Gradient get backgroundReceiveSymbol;
  Gradient get backgroundCardPay;
}

class AppGradientsDefault implements AppGradients {
  @override
  Gradient get background => LinearGradient(colors: [
        Color(0xFF40B38C),
        Color(0xFF45CC93),
      ], transform: GradientRotation(2.35619 * pi));

  @override
  Gradient get backgroundAppBar => RadialGradient(
        center: Alignment(-0.7466, -0.1852),
        colors: [
          Color(0xFF45CC93),
          Color(0xFF40B38C),
        ],
        stops: [0.0, 1.0],
      );

  @override
  Gradient get backgroundCardReceive => LinearGradient(
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFFF0FAF7),
        ],
        stops: [0.6656, 1],
        transform: GradientRotation(2 * pi),
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  @override
  Gradient get backgroundReceiveSymbol => RadialGradient(
        center: Alignment(-0.0026, 0),
        colors: [
          Color(0xFF45CC93).withOpacity(0.12),
          Color(0xFF40B38C).withOpacity(0.12),
        ],
        stops: [0.0, 1.0],
      );

  @override
  Gradient get backgroundCardPay => LinearGradient(
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFFFAF0F2),
        ],
        stops: [0.6656, 1],
        transform: GradientRotation(2 * pi),
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}
