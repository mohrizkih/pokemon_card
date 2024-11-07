import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class T {
  static Text poppinsBold(String data, {TextAlign? textAlign, Color? color, double? size, int? maxline, TextOverflow? overflow, double? letterSpacing, double? height}) {
    return Text(
      data,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxline,
      overflow: overflow,
      style: GoogleFonts.poppins(fontSize: size ?? 14.0, fontWeight: FontWeight.w700, color: color, letterSpacing: letterSpacing ?? 0.2, height: height),
    );
  }

  static Text poppinsRegular(String data, {TextAlign? textAlign, Color? color, double? size, int? maxline, TextOverflow? overflow, double? letterSpacing}) {
    return Text(
      data,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxline,
      overflow: overflow,
      style: GoogleFonts.poppins(fontSize: size ?? 14.0, fontWeight: FontWeight.w400, color: color, letterSpacing: letterSpacing ?? 0.2),
    );
  }

  static Text poppinsMedium(String data, {TextAlign? textAlign, Color? color, double? size, int? maxline, TextOverflow? overflow, double? letterSpacing, double? height}) {
    return Text(
      data,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxline,
      overflow: overflow,
      style: GoogleFonts.poppins(fontSize: size ?? 14.0, fontWeight: FontWeight.w500, color: color, letterSpacing: letterSpacing ?? 0.2, height: height),
    );
  }

  static Text poppinsSemiBold(String data, {TextAlign? textAlign, Color? color, double? size, int? maxline, TextOverflow? overflow, double? letterSpacing}) {
    return Text(
      data,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxline,
      overflow: overflow,
      style: GoogleFonts.poppins(fontSize: size ?? 14.0, fontWeight: FontWeight.w600, color: color, letterSpacing: letterSpacing ?? 0.2),
    );
  }

  static TextStyle textpoppinsSetting({double? size, FontWeight? fontWeight, Color? color, FontStyle? fontStyle, TextDecoration? decoration, Color? backgroundColor, double? letterSpacing}) {
    return GoogleFonts.poppins(
      fontSize: size ?? 14.0,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? Colors.black,
      fontStyle: fontStyle ?? FontStyle.normal,
      decoration: decoration,
      backgroundColor: backgroundColor,
      letterSpacing: letterSpacing,
    );
  }
}
