part of '../import-path/app_import_path.dart';
class AppColor{

  /// [colorFromHex] convert hex color to color flutter
  /// Example
  /// 
  /// ''' dart
  /// colorFromHex(#FFFFFF) return Color(0xFFFFFFFF)
  /// '''
  static Color colorFromHex(String hexColor,{String opacity = "FF"}){

    String color = hexColor.replaceAll("#",""); // FFFFFF

    /// merg [opacity] with [color] 
    String opacityColor = "$opacity$color";

    return Color(int.parse(opacityColor,radix: 16)); // radix here increase 0X to become 0xFFFFFFFF
  }

  // color App
  static final Color blueDetailsBG = colorFromHex('#a2e7f5');
  static final Color darkModeCardDetails = colorFromHex('#484848');
  static final Color darkModeBodyDetails = colorFromHex('#303030');
  static final Color lightModeInstallBtn = colorFromHex('#456369');
  static final Color darkModeInstallBtn = colorFromHex('#BB86FC');
  static final Color lightModeUnInstallBtn = colorFromHex('#e95f44');
  static final Color darkModeUnInstallBtn = colorFromHex('#FF0266');
  static final Color mb = colorFromHex('#FF0266');
  static final Color blackCardSocial = colorFromHex('#C8C8C8', opacity: 'A5');
  static final Color star = colorFromHex('#FFC107');
  static final Color cardClick = colorFromHex('#46B5F6');
  static final Color cardClickDark = colorFromHex('#BB86FC');

  // loading
  static final Color lightLoading = colorFromHex('#46B5F6');
  static final Color darkLoading = colorFromHex('#BB86FC');
  static final Color lightModeSnack = colorFromHex('#90ee02');
  static final Color darkModeSnack = colorFromHex('#BB86FC');

  // color base
  static final Color bgWhite = colorFromHex('#FFFFFF');
  static final Color bgBlack = colorFromHex('#000000');
  static final Color bgDark = colorFromHex('#000000');
  static final Color bgCursor = colorFromHex('#3A3B3C');
  static final Color bgGrey = colorFromHex('#C8C8C8');
  static final Color bgGreen = colorFromHex('#A5D6A7');
  static final Color bgGreenBold = colorFromHex('#1B5E20');
  static final Color bgBlue = colorFromHex('#2196F3');
  static final Color bgRed = colorFromHex('#FD1D1D');
  static final Color bgPink = colorFromHex('#BB86FC');
  static final Color bgOrange = colorFromHex('#F57C00');

  // Theme
  static final Color darkMode = colorFromHex('#121212');
  static final Color lightMode = colorFromHex('#ffffff');
  static final Color lightMain = colorFromHex('#3F51B5');
  static final Color tapBarText = colorFromHex('#FF3F51B5');

  //  Btn Color
  static final List<Color> btnColorsLight = [bgBlue, colorFromHex('#99C5E8')];
  static final List<Color> btnColorsDark = [colorFromHex('#7005F3'), bgPink];
  static final Color splashBtnLight = bgBlue.withOpacity(0.5);
  static final Color splashBtnDark = bgPink.withAlpha(100);

}