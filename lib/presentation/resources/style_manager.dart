import 'package:flutter/material.dart';

import 'fonts_manager.dart';
TextStyle _getTextStyle(Color color, FontWeight fontWeight, double fontSize) {
  return TextStyle(
      color: color,
      fontFamily: FontConstants.fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize);
}

/// Regular Style
TextStyle getRegularStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) {
  return _getTextStyle(color, FontWeighManager.regular, fontSize);
}

///Medium Style
TextStyle getMediumStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) {
  return _getTextStyle(color, FontWeighManager.medium, fontSize);
}

///Light Style

TextStyle getLightStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) {
  return _getTextStyle(color, FontWeighManager.light, fontSize);
}

///Bold Style

TextStyle getBoldStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) {
  return _getTextStyle(color, FontWeighManager.bold, fontSize);
}

/// SemiBold Style
TextStyle getSemiBoldStyle({
  required Color color,
  double fontSize = FontSizeManager.s12,
}) {
  return _getTextStyle(color, FontWeighManager.semiBold, fontSize);
}
