import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/app_export.dart';
import '../../core/utils/app_colors.dart';


/// Helper class for managing themes and colors.
class ThemeHelper {


  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        ColorSchemes.primaryColorScheme;
    return ThemeData(
      useMaterial3: true,
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: AppColors.whiteA700,
          backgroundColor: colorScheme.primary.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.h),
          ),
          shadowColor: colorScheme.primary,
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary.withOpacity(1),
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: const BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: AppColors.primary.withOpacity(1))
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: AppColors.teal5001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFD1A578),
    primaryContainer: Color(0X81332F32),

    // Error colors
    errorContainer: Color(0XFF2F9CD9),
    onError: Color(0XFFD9D9D9),

    // On colors(text colors)
    onPrimary: Color(0X8125242A),
    onPrimaryContainer: Color(0X81FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA700 => Color(0XFFFFA800);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray900 => Color(0XFF363233);

  // Gray
  Color get gray300 => Color(0XFFE8E5E5);
  Color get gray30001 => Color(0XFFE8E6E6);
  Color get gray400 => Color(0XFFC0C0C0);
  Color get gray40001 => Color(0XFFC5C5C5);
  Color get gray40002 => Color(0XFFC9C9C9);
  Color get gray500 => Color(0XFF9C9AA1);
  Color get gray50001 => Color(0XFF9A9A9A);
  Color get gray600 => Color(0XFF777777);
  Color get gray60001 => Color(0XFF7F7F7F);
  Color get gray700 => Color(0XFF726455);
  Color get gray70001 => Color(0XFF5B5963);
  Color get gray70084 => Color(0X84645F64);
  Color get gray800 => Color(0XFF434248);
  Color get gray80000 => Color(0X00423C3A);

  // LightGreen
  Color get lightGreen500 => Color(0XFF7BD833);
  Color get lightGreen700 => Color(0XFF669341);
  Color get lightGreen70001 => Color(0XFF6DB234);
}

ThemeData get theme => ThemeHelper().themeData();
