import 'package:flutter/material.dart';

class AppColor {
  static const Color bg1 = Color(0xffb8d9ee);
  static const Color bg2 = Color(0xff6899e3);
  static const Color bg3 = Color(0xff1d5a88);
  static const Color bg4 = Color(0xff052d88);
  static const Color bg5 = Color(0xff01133d);
  static const Color bg6 = Color(0xff000413);

  static const Color bgNavy = bg6;

  //surface
  static const Color pill = Color(0xff161e2e);
  static const Color inputFill = Color(0xff232c3e);

  //borders
  static const Color border = Color(0xff2a3346);
  static const Color inputBorder = Color(0xff232c3e);

  //Text
  static const Color textWhite = Color(0xffffffff);
  static const Color textMuted = Color(0xff9aa3b2);

  //Primary button gradient
  static const Color primaryStart = Color(0xff7fd4f2);
  static const Color primaryEnd = Color(0xff2563eb);

  static const RadialGradient backgroundGradient = RadialGradient(
      center: Alignment(0.85, -1.0),
      radius: 1.7,
      colors: [bg1, bg2, bg3, bg4, bg5, bg6]);

  static const RadialGradient lowGradient =
      RadialGradient(center: Alignment(-1.0, 1.0), radius: 1.1, colors: [
    bg4,
    Color(0x00052d88),
  ]);

  static const LinearGradient primaryGradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [AppColor.primaryEnd, AppColor.primaryEnd]);
}
