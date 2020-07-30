import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 *  Font Styles
 * **/

var kLoginTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
    color: Colors.green,
    backgroundColor: Colors.white,
    letterSpacing: 1.5
  ),
);

var kActionTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: .5
  )
);

var kRegularHeadingsTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w300,
    color: Colors.white,
    letterSpacing: 0.2
  )
);

var kAllPermsReqTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.green[400],
    letterSpacing: 0.2
  )
);

/**
 *  Text Input Decors
 * **/

const loginInputDecors = InputDecoration(
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFbfe0e8), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(30.0))
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFbfe0e8), width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(30.0))
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.greenAccent, width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(30.0))
  ),
);