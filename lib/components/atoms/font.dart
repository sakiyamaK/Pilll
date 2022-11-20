import 'package:flutter/material.dart';

class FontFamily {
  static String get standarad => japanese;

  static const String number = "Avenir Next";
  static const String alphabet = "Avenir Next";
  static const String japanese = "Noto Sans CJK JP";
  static const String roboto = "Roboto";
}

class FontType {
  static const TextStyle subTitle = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const TextStyle xBigTitle = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );
  static const TextStyle xBigNumber = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );
  static const TextStyle sBigTitle = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
  static const TextStyle cardHeader = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );
  static const TextStyle thinTitle = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );
  static const TextStyle done = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const TextStyle close = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
  static const TextStyle componentTitle = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );
  static const TextStyle gridElement = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static const TextStyle helpRow = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static const TextStyle listRow = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );
  static const TextStyle assisting = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );
  static const TextStyle assistingBold = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
  static const TextStyle inputNumber = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );
  static const TextStyle description = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );
  static const TextStyle descriptionBold = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w700,
    fontSize: 12,
  );
  static const TextStyle smallTitle = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );
  static const TextStyle sSmallTitle = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w600,
    fontSize: 10,
  );
  static const TextStyle sSmallNumber = TextStyle(
    fontFamily: FontFamily.number,
    fontWeight: FontWeight.w600,
    fontSize: 10,
  );
  static const TextStyle sSmallSentence = TextStyle(
    fontFamily: FontFamily.japanese,
    fontWeight: FontWeight.w300,
    fontSize: 10,
  );
}
