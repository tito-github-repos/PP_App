import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

 
class AppTheme {
  AppTheme._();

  static ThemeData get light {
    final headline = GoogleFonts.manrope();
    final body = GoogleFonts.inter();

    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        surface: AppColors.surface,
      ),
    );

    return base.copyWith(
      textTheme: base.textTheme.copyWith(
        displayLarge: headline.copyWith(fontSize: 30, fontWeight: FontWeight.w800, color: AppColors.ink, letterSpacing: -0.5),
        headlineMedium: headline.copyWith(fontSize: 20, fontWeight: FontWeight.w800, color: AppColors.ink),
        titleLarge: headline.copyWith(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.ink),
        bodyLarge: body.copyWith(fontSize: 15, height: 1.45, color: AppColors.ink),
        bodyMedium: body.copyWith(fontSize: 13.5, height: 1.4, color: AppColors.muted),
        labelLarge: body.copyWith(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.ink),
        labelSmall: body.copyWith(fontSize: 11.5, color: AppColors.muted),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.ink),
        titleTextStyle: headline.copyWith(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.ink),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.primary.withOpacity(0.4),
          minimumSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          textStyle: body.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(54),
          side: const BorderSide(color: AppColors.surfaceBorder, width: 1.2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          foregroundColor: AppColors.ink,
          textStyle: body.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.backgroundTint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintStyle: body.copyWith(color: AppColors.muted, fontSize: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.primary, width: 1.6),
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: AppColors.surfaceBorder),
        ),
      ),
      dividerTheme: const DividerThemeData(color: AppColors.divider, thickness: 1),
    );
  }
}