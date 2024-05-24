import 'package:flutter/material.dart';
import 'hex_color.dart';

class AppColors {
  static Color primary = HexColor('#D24325');
  static Color secondPrimary = HexColor('#205960');
  static Color secondPrimary2 = HexColor('#EDB5A8');
  static Color orangeThirdPrimary = HexColor('#D24325');
  static Color blueLiteColor = HexColor('#00B3DC');
  static Color blueTextColor = HexColor('#5663FF');
  static Color grayColor = HexColor('#525252');
  static Color grayColor3 = HexColor('#DADADA');
  static Color grayColor5 = HexColor('#F8F8F8');
  static Color grayColor4 = HexColor('#E5E5E5');
  static Color grayColor2 = HexColor('#747474');
  static Color grayColor6 = HexColor('#BABABA');
  static Color grayColor7 = HexColor('#F2F2F2');
  static Color grayColor8 = HexColor('#F5F5F5');
  static Color yellowColor = HexColor('#FFCA06');
  static Color yellow2Color = HexColor('#FCC806');
  static Color yellow3Color = HexColor('#FFDB57');
  static Color blackColor = HexColor('#110101');
  static Color black2Color = HexColor('#0F0F0F');
  static Color goldStarColor = HexColor('#FFCC00');
  static Color unStarColor = HexColor('#E9E9EE');
  static Color scaffoldColor = HexColor('#FDFDFD');
  static Color avatarColor = HexColor('#96B2B5');
  static Color yellowMostColor = HexColor('#FFF8DF');
  static Color redColor = HexColor('#E6242E');
  static Color greenColor = HexColor('#3B9A00');
  static Color orange2 = HexColor('#D6C000');

  static Color hint = Colors.grey;
  static Color blackLite = Colors.black54;
  static Color error = Colors.red;
  static Color success = Colors.green;
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color gray = Colors.grey;
  static Color grayLite = Colors.grey[700]!;
  static Color gray1 = HexColor('#C4C4C4');
  static Color blackLight = HexColor('#656565');
  static Color gray2 = HexColor('#BABABB');
  // static Color gray6 = HexColor('#A7A7A7');
  // static Color gray7 = HexColor('#A0A1A0');
  static Color red = HexColor('#FF0000');
  static Color blue3 = Color(0xff3646ff);
  static Color bink = HexColor('#FF9F9F');
  static Color purple1 = HexColor('#854AA4');
  static Color purple1light = HexColor('#E3D2FE');
  static Color blue = HexColor('#143A7B');
  static Color blue1 = HexColor('#CBDFF8');
  static Color blue2 = HexColor('#8290F8');
  static Color blue5 = HexColor('#008DB9');
  static Color blue4 = Color(0xff3E3F68);
  static Color bluelight = HexColor('#D7EAF9');
  static Color orange = HexColor('#FE7C04');
  static Color orangelight = HexColor('#FFEAD7');
  static Color opacityWhite = Colors.white.withOpacity(0.5);
  static Color transparent = Colors.transparent;

  Color darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lightens(String color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(HexColor(color));
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
