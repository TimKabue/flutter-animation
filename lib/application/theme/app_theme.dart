import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Light Theme
final _lightColorScheme = ColorScheme.fromSwatch(
  primarySwatch: Colors.orange,
);

final _lightTextTheme = GoogleFonts.emilysCandyTextTheme();

final _lightAppBarTheme = AppBarTheme(
  centerTitle: true,
  titleTextStyle: GoogleFonts.luxuriousRoman(),
);

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: _lightColorScheme,
    textTheme: _lightTextTheme,
    scaffoldBackgroundColor: Colors.orange[100],
    appBarTheme: _lightAppBarTheme,
    // other theme properties
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // other theme properties
  );
}

