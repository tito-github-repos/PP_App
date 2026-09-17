import 'package:flutter/material.dart';

/// Design tokens for PP, matched to the PrelimsPass reference: white
/// canvas, a confident forest green as the one brand color, navy-black
/// headings, and soft mint tints standing in for shadows/depth.

import 'package:flutter/material.dart';

/// Design tokens for PP, matched to the PrelimsPass reference: white
/// canvas, a confident forest green as the one brand color, navy-black
/// headings, and soft mint tints standing in for shadows/depth.
class AppColors {
  AppColors._();

  // Backdrop
  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundTint = Color(0xFFF3F8F4); // soft mint wash — hero areas, input fills
  static const Color surface = Color(0xFFFFFFFF);        // cards
  static const Color surfaceBorder = Color(0xFFE7ECE9);  // card/input borders
  static const Color divider = Color(0xFFE5E7EB);

  // Text
  static const Color ink = Color(0xFF111827);  // headings
  static const Color muted = Color(0xFF6B7280); // secondary copy

  // Brand — green carries Prelims and every default primary action.
  static const Color primary = Color(0xFF2E8B57);
  static const Color primaryDark = Color(0xFF24714A);  // pressed/hover shade
  static const Color primarySoft = Color(0xFFE7F5EC);  // badges, icon chips

  // Secondary — warm amber/orange, reserved for the Mains track so the
  // two plans are visually distinct at a glance without adding a third
  // unrelated color to the palette.
  static const Color secondary = Color(0xFFD9730D);
  static const Color secondaryDark = Color(0xFFB35F0A);
  static const Color secondarySoft = Color(0xFFFBEEE0);

  // Semantic — true/false feedback for the quiz flow. True reuses the
  // brand green on purpose, so a correct answer feels "on brand".
  static const Color correct = primary;
  static const Color incorrect = Color(0xFFE0533D);
    static const Color textPrimary = ink;
  static const Color textSecondary = muted;
}

