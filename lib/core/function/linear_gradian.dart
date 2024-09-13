import 'package:chatappfr/core/util/constant.dart';
import 'package:flutter/material.dart';

BoxDecoration linearGradientMethod() {
  return BoxDecoration(
    gradient: LinearGradient(
      end: Alignment.topLeft,
      begin: Alignment.bottomRight,
      colors: listColor,
    ),
  );
}
