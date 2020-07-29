import 'package:Pilll/theme/color.dart';
import 'package:Pilll/theme/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextColor {
  static Color get standard => black;
  static final Color black = Colors.black;
  static final Color white = Colors.white;
  static final Color gray = HexColor.fromHex("7E7E7E");
  static final Color lightGray = HexColor.fromHex("CDCFD1");
}

class TextColorStyle {
  static TextStyle get standard => black;
  static final TextStyle black = TextStyle(color: TextColor.black);
  static final TextStyle white = TextStyle(color: TextColor.white);
  static final TextStyle gray = TextStyle(color: TextColor.gray);
  static final TextStyle lightGray = TextStyle(color: TextColor.lightGray);
}

class TextStyles {
  static final TextStyle title = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: TextColor.black,
  );
  static final TextStyle subTitle = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.normal,
    fontSize: 17,
    color: TextColor.gray,
  );
  static final TextStyle question = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: TextColor.black,
  );
  static final TextStyle assisting = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w300,
    fontSize: 14,
    color: TextColor.gray,
  );
  static final TextStyle input = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.normal,
    fontSize: 17,
    color: TextColor.gray,
  );
  static final TextStyle list = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: TextColor.black,
  );
  static final TextStyle description = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: TextColor.black,
  );
  static final TextStyle done = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: TextColor.white,
  );
  static final TextStyle largeNumber = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.normal,
    fontSize: 32,
    color: TextColor.black,
  );
}
