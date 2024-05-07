import 'dart:math';

import 'package:flutter/material.dart';

BoxDecoration gradientBg = const BoxDecoration(
    gradient: LinearGradient(colors: <Color>[
  Colors.blue,
  Colors.blue,
  Colors.white,
  Colors.green,
  Colors.green,
], tileMode: TileMode.mirror, transform: GradientRotation(pi / 2)));
