import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'style_manager.dart';
import 'values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    // color of any disabled button
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    //Floating action button theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorManager.primary,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.white,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        //systemNavigationBarColor: ColorManager.black,
      ),
      centerTitle: true,
      color: ColorManager.white,
      elevation: AppSize.s0,
      //shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getBoldStyle(fontSize: FontSize.s20, color: ColorManager.black),
    ),
    //TabBar

    // button theme
    // buttonTheme: ButtonThemeData(
    //     shape: const StadiumBorder(),
    //     disabledColor: ColorManager.grey1,
    //     buttonColor: ColorManager.black,
    //     splashColor: ColorManager.lightPrimary),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManager.white, fontSize: FontSize.s17),
            primary: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s10)))),

    // get text theme

    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),

      //headline large for app Logo text
      headlineLarge: getRegularStyle(
          color: ColorManager.black,
          fontSize: FontSize.s27,
          fontFamily: FontConstants.meddonFontFamily),

//
      headlineMedium: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s20,
      ),
      //
      titleMedium: getRegularStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s18,
      ),

      //for textField custom title
      titleSmall: getMediumStyle(
        color: ColorManager.grey,
        fontSize: FontSize.s14,
      ),

      //
      bodyLarge: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s37,
        fontFamily: FontConstants.meddonFontFamily,
      ),

      //grey text in body with small size
      bodySmall: getMediumStyle(
        color: ColorManager.grey2,
        fontSize: FontSize.s14,
      ),
      // bodyMedium: getRegularStyle(
      //     color: ColorManager.black,
      //     fontSize: FontSize.s37,
      //     fontFamily: FontConstants.meddonFontFamily),

      //
// for unvisble details text
      bodyMedium: TextStyle(
        color: ColorManager.unvisibleGrey,
        fontSize: FontSize.s12,
        fontFamily: FontConstants.poppinsFontFamily,
        fontWeight: FontWeightManager.regular,
        height: AppConstants.heightFactor,
      ),
      // labelSmall://

      //
      labelMedium: getMediumStyle(
        color: ColorManager.black,
        fontSize: FontSize.s12,
      ),

      //
      labelLarge: getMediumStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),
      //
      displaySmall: getMediumStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
        fontFamily: FontConstants.poppinsFontFamily,
      ),
      //
      displayMedium: getMediumStyle(
        color: ColorManager.black,
        fontSize: FontSize.s20,
      ),
    ),

    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
        alignLabelWithHint: false,

        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getRegularStyle(
          color: ColorManager.grey2,
          fontSize: FontSize.s16,
        ),
        labelStyle:
            getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.outLineBorderColor, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s5))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s5))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
    // label style

    iconTheme: const IconThemeData(
      size: AppSize.s30,
    ),
  );
}
