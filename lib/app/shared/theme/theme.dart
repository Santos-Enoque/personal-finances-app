import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData light(){
    return ThemeData(
      brightness: Brightness.light,
      primaryColorBrightness: Brightness.light,
      primaryColor: AppColors.primaryTwo,
      disabledColor: AppColors.primaryTwo.withOpacity(.3),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return AppColors.primaryTwo.withOpacity(0.3);
            return AppColors.primaryTwo; // Use the component's default.
          },
        ),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      )),
      scaffoldBackgroundColor: AppColors.backgroundColorLight,
      textTheme: TextTheme(
        headline5: TextStyle(color: AppColors.primaryTwo),
        headline6: TextStyle(color: AppColors.primaryTwo),
        headline4: TextStyle(fontSize: 24),
        bodyText1: TextStyle(color: AppColors.black), 
        caption: TextStyle(color: AppColors.black), 
      ),
       appBarTheme: AppBarTheme(
         centerTitle: true,
        brightness: Brightness.light,
        elevation: 0,
        color: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      iconTheme: IconThemeData(color: AppColors.darkGrey)
    );
  }

  static ThemeData dark(){
    return ThemeData(
      brightness: Brightness.dark,
      primaryColorBrightness: Brightness.dark,
      primaryColor: AppColors.primaryTwo,
      disabledColor: AppColors.primaryTwo.withOpacity(.3),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return AppColors.primaryTwo.withOpacity(0.3);
            return AppColors.primaryTwo; // Use the component's default.
          },
        ),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      )),
      scaffoldBackgroundColor: AppColors.backgroundColorDark,
      textTheme: TextTheme(
        headline5: TextStyle(color: AppColors.primaryTwo),
        headline6: TextStyle(color: AppColors.primaryTwo),
        bodyText1: TextStyle(color: AppColors.white), 
        caption: TextStyle(color: AppColors.white), 
      ),
       appBarTheme: AppBarTheme(
         centerTitle: true,
        brightness: Brightness.dark,
        elevation: 0,
        color: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      iconTheme: IconThemeData(color: AppColors.lightGrey)
    );
  }
}