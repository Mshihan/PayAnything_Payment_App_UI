import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle KHeadingStyle = GoogleFonts.roboto(
    fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black);

TextStyle KDataStyle = GoogleFonts.roboto(fontSize: 13, color: Colors.black);

MaterialStateColor KRowColor =
    MaterialStateColor.resolveWith((states) => Colors.greenAccent);
