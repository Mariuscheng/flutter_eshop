import 'package:flutter/material.dart';

final farmTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFFFE0B2), // 柔和米色
    brightness: Brightness.light,
  ).copyWith(
    primary: const Color(0xFFFFCC80), // 淡橙
    secondary: const Color(0xFFFFE082), // 淡黃
    background: const Color(0xFFFFF8E1), // 柔和背景
    surface: const Color(0xFFD7CCC8), // 淺棕
  ),
  scaffoldBackgroundColor: const Color(0xFFFFF8E1),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFD7CCC8), // 淺棕
    foregroundColor: Color(0xFF6D4C41), // 深棕
  ),
  fontFamily: 'NotoSansTC', // 統一字型
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFFFCC80), // 按鈕底色
      foregroundColor: Color(0xFF6D4C41), // 文字顏色
      textStyle: const TextStyle(
          fontFamily: 'NotoSansTC', fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Color(0xFF6D4C41),
      textStyle: const TextStyle(
          fontFamily: 'NotoSansTC', fontWeight: FontWeight.bold),
      side: const BorderSide(color: Color(0xFFD7CCC8)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Color(0xFF6D4C41),
      textStyle: const TextStyle(
          fontFamily: 'NotoSansTC', fontWeight: FontWeight.bold),
    ),
  ),
  useMaterial3: true,
);
