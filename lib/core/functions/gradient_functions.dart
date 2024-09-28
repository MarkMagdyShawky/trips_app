import 'package:flutter/material.dart';

Gradient LinearGradientbackground(List<Color> colors) {
  return LinearGradient(
    colors: colors,
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

Gradient LinearCenterGradientbackground(List<Color> colors) {
  return LinearGradient(
    colors: colors,
    begin: Alignment.center,
    end: Alignment.bottomCenter,
  );
}

Gradient LinerHorizontalGradientBackGround(List<Color> colors) {
  return LinearGradient(
    colors: colors,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
