import 'package:cahtapp/core/util/constant.dart';
import 'package:flutter/material.dart';

BoxDecoration linearGradientMethod() {
  return const BoxDecoration(
    gradient: LinearGradient(
      end: Alignment.topLeft,
      begin: Alignment.bottomRight,
      colors: Colors.red,
    ),
  );
}
