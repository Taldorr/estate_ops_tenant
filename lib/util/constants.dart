import 'package:flutter/material.dart';

class Constants {
  static const backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF8DB9CA), Color(0xFF8DB9CA)],
    // colors: [Color(0xFFBAC4F8), Color(0xFF78C17F)],
  );

  static const cardShadow = BoxShadow(
    color: Color(0x26354ECE),
    blurRadius: 10,
    offset: Offset(0, 2),
    spreadRadius: 0,
  );

  static const primary = Color(0xFF4F758B); // Color(0xFF354ECE);
  static const whitey = Color(0xFFFDFDFF);
  static const blackey = Color(0xFF1C1C1C);
  static const success = Color(0xFF008625);
}
