import 'package:flutter/material.dart';

class InputBorders {
  static OutlineInputBorder inputBorder(Color borderColor) =>
      OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: borderColor,
        ),
      );
}