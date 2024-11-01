import 'package:flutter/material.dart';

class Constants {
  static const gradient1 = LinearGradient(
    begin: Alignment(0.14, 0.99),
    end: Alignment(-0.14, -0.99),
    colors: [
      Color.fromRGBO(243, 233, 210, 0),
      Color.fromRGBO(243, 233, 210, 0.9),
    ],
  );

  static const gradient2 = LinearGradient(
    begin: Alignment(1, 0.05),
    end: Alignment(-1, -0.05),
    colors: [
      Color.fromRGBO(68, 92, 210, 0.4),
      Color.fromRGBO(66, 137, 137, 0.4),
    ],
  );

  static const cardShadow = BoxShadow(
    color: Color(0x26354ECE),
    blurRadius: 10,
    offset: Offset(0, 2),
    spreadRadius: 0,
  );

  static const primary = Color(0xFF4256BB);
  static const secondary = Color(0xFF428989);
  static const terciary = Color(0xFFF3E9D2);
  static const whitey = Color(0xFFFDFDFF);
  static const blackey = Color(0xFF1C1C1C);
  static const success = Color(0xFF008625);

  static const dataPrivacyUrl = "https://www.estate-ops.de/datenschutz-app";
  static const touUrl = "https://www.estate-ops.de/nutzungsbedingungen-app";
}
