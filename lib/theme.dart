import 'package:flutter/material.dart';

LinearGradient appGradient() => const LinearGradient(
  colors: [Color(0xffFF5AB2), Color(0xff9B5DE5), Color(0xff00BBF9)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffFF5AB2)),
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 16),
        bodyMedium: TextStyle(fontSize: 14),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
