import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static const String fontFamily = 'Poppins';

  static TextTheme textTheme(TextTheme base) {
    // Use Google Fonts to generate a consistent TextTheme across platforms.
    return GoogleFonts.poppinsTextTheme(base);
  }
}

