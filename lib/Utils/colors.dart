import 'package:flutter/material.dart';

const colorPrimary = Color(0xFFF6F5F0);
const colorRed = Color(0xFFEE4225);
const colorTextBlack = Color(0xFF1D1C1C);
const scaffoldColorDark = Color(0xFF090909);
const scaffoldSecondaryDark = Color(0xFFFF9900); //Color(0xFF1E1E1E);
const appButtonColorDark = Color(0xFF282828);
const grayColor = Color(0xFFBFBFBF);
const kFontLightGrayColor = Color(0xFF5F5F5F);
const lightTextColor = Color(0xFF535353);

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
