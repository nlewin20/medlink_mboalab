import 'package:flutter/material.dart';
import 'package:medlink/core/colors.dart';

import 'constants.dart';

ThemeData customLightTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: kPurplePrimary,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    cardColor: kNeutralVar95,
    iconTheme: const IconThemeData(color: kNeutral10),
    fontFamily: "Poppins",
    textTheme: const TextTheme(
        displayLarge: kHeading,
        displayMedium: kHeading,
        bodyLarge: kBodyLarge,
        bodyMedium: kBody),
    colorScheme: const ColorScheme.light()
        .copyWith(secondary: kRedPrimary)
        .copyWith(background: Colors.white),
  );
}

ThemeData customDarkTheme(BuildContext context) {
  return ThemeData(
      useMaterial3: true,
      primaryColor: kPurplePrimary,
      scaffoldBackgroundColor: kNeutral20,
      brightness: Brightness.dark,
      cardColor: kNeutral20,
      iconTheme: const IconThemeData(color: Colors.white),
      fontFamily: "Poppins",
      textTheme: const TextTheme(
          displayLarge: kHeading,
          displayMedium: kHeading,
          bodyLarge: kBodyLarge,
          bodyMedium: kBody),
      colorScheme: const ColorScheme.dark()
          .copyWith(secondary: kRedPrimary, background: kNeutral20));
}
