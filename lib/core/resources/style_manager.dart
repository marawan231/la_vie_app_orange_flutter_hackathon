import 'package:flutter/material.dart';
import 'values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color,
  String fontFamily,
  double height,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
    height: height,
  );
}

TextStyle getAddPhotoTextStyle() {
  return getRegularStyle(
    color: ColorManager.primary,
    fontSize: 14,
  );
}


// regular style

TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.defaultFontFamily,
  double height = 0,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.regular,
    color,
    fontFamily,
    height,
  );
}

// medium style

TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.defaultFontFamily,
  double height = 0,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.medium,
    color,
    fontFamily,
    height,
  );
}

// light style

TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.defaultFontFamily,
  double height = 0,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.light,
    color,
    fontFamily,
    height,
  );
}

// bold style

TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.defaultFontFamily,
  double height = 0,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.bold,
    color,
    fontFamily,
    height,
  );
}

TextStyle getTotalPrice() {
  return TextStyle(
    color: ColorManager.primary,
    fontSize: 16.25,
    fontFamily: FontConstants.interFontFamily,
    fontWeight: FontWeight.w800,
  );
}

TextStyle getCurrencyOfTotalPriceStyle() {
  return TextStyle(
    color: ColorManager.primary,
    fontSize: 21.44,
    fontFamily: FontConstants.interFontFamily,
    fontWeight: FontWeight.w600,
  );
}

TextStyle getTotalStringStyle() {
  return getSemiBoldStyle(
    color: ColorManager.opacityBlack,
    fontFamily: FontConstants.interFontFamily,
    fontSize: AppSize.s20,
  );
}

// TextStyle getCartAppBarStyle() {
//   return getSemiBoldStyle(
//     color: ColorManager.black,
//     fontSize: AppSize.s20,
//     fontFamily: FontConstants.interFontFamily,
//   );
// }

// semibold style

TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  String fontFamily = FontConstants.defaultFontFamily,
  double height = 0,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.semiBold,
    color,
    fontFamily,
    height,
  );
}
