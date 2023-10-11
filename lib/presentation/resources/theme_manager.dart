import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'fonts_manager.dart';
import 'style_manager.dart';
import 'values_manager.dart';
ThemeData getAppTheme() {
  return ThemeData(
    /// Main Color Theme
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightGray,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    ///CardView theme
    cardTheme: const CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.gray,
      elevation: AppSize.s4,
    ),

    /// app bar theme
    appBarTheme: AppBarTheme(
      shadowColor: ColorManager.lightPrimary,
        color: ColorManager.primary,
        centerTitle: true,
        elevation: AppSize.s4,
        titleTextStyle: getRegularStyle(
            color: ColorManager.white,
            fontSize: FontSizeManager.s16)),

    /// button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      splashColor: ColorManager.lightPrimary,
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
    ),

    ///elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
            color: ColorManager.white, fontSize: FontSizeManager.s17),
        backgroundColor: ColorManager.activeDot,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
      ),
    ),

    ///text theme
    textTheme: TextTheme(
        displayLarge: getBoldStyle(
            color: ColorManager.darkGray, fontSize: FontSizeManager.s22),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.darkGray, fontSize: FontSizeManager.s16),
        headlineMedium: getRegularStyle(
            color: ColorManager.darkGray, fontSize: FontSizeManager.s16),
        titleMedium:
        getMediumStyle(color: ColorManager.primary, fontSize: FontSizeManager.s16),
        titleSmall:
        getRegularStyle(color: ColorManager.white, fontSize: FontSizeManager.s16),
        bodyLarge: getRegularStyle(color: ColorManager.grey1),
        bodySmall: getRegularStyle(color: ColorManager.grey2,fontSize: FontSizeManager.s12),
        bodyMedium: getRegularStyle(color: ColorManager.grey2, fontSize: FontSizeManager.s12),
        labelSmall:
        getBoldStyle(color: ColorManager.primary, fontSize: FontSizeManager.s12),

    ),

    /// input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(
          AppPadding.p8,
        ),
        hintStyle: getRegularStyle(
            color: ColorManager.gray,
            fontSize: FontSizeManager.s14),
        labelStyle: getMediumStyle(
            color: ColorManager.gray, fontSize: FontSizeManager.s14),
        errorStyle:getRegularStyle(
            color: ColorManager.error),

        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.gray,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.error,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)))),
  );

}
