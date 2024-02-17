import 'package:flutter/material.dart';
import 'package:heart/core/utils/app_colors.dart';

import '../../config/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyle {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
    fontSize: 18,
  );
  static get bodyLarge20 => theme.textTheme.bodyLarge!.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: "Jaldi",
    color: Colors.white
  );
  static get bodyLarge20Grey => theme.textTheme.bodyLarge!.copyWith(
    fontSize: 20,
    fontFamily: "Jaldi",
    color: Colors.grey[300]
  );
  static get bodyMediumKantumruyGray600 =>
      theme.textTheme.bodyMedium!.kantumruy.copyWith(
        color: AppColors.gray600,
      );
  static get bodyMediumKantumruyOnPrimary =>
      theme.textTheme.bodyMedium!.kantumruy.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumKantumruyff25242a =>
      theme.textTheme.bodyMedium!.kantumruy.copyWith(
        color: const Color(0XFF25242A),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallKantumruyOnError =>
      theme.textTheme.bodySmall!.kantumruy.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 8,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.onPrimary,
    fontSize: 11,
  );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.onPrimaryContainer,
    fontSize: 11,
  );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.primaryContainer,
    fontSize: 11,
  );
  // Display text style
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
    fontSize: 50,
  );
  static get displayMediumKaiseiTokuminOnPrimaryContainer =>
      theme.textTheme.displayMedium!.kaiseiTokumin.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get kaisei_400_45 =>
      theme.textTheme.displayMedium!.kaiseiTokumin.copyWith(
        color: Colors.white,
        fontSize: 45,
        fontWeight: FontWeight.w400,
      );
  static get kaisei_400_16 =>
      theme.textTheme.displayMedium!.kaiseiTokumin.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: "Kantumruy"
      );
  static get displayMediumOnPrimary => theme.textTheme.displayMedium!.copyWith(
    color: theme.colorScheme.onPrimary.withOpacity(1),
  );
  static get displayMediumOnPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get displayMediumOnPrimaryContainerRegular =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 48,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get kaisei_500_30 =>
      theme.textTheme.headlineLarge!.kaiseiTokumin.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 30,
        fontWeight: FontWeight.w500,
        fontFamily: "Kaisei Tokumin"
      );
  static get kaisei_700_16 =>
      theme.textTheme.headlineLarge!.kaiseiTokumin.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: "Kaisei Tokumin"
      );
  static get kaiseiDecol_700_40 =>
      theme.textTheme.headlineLarge!.kaiseiTokumin.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 40,
        fontWeight: FontWeight.w700,
        fontFamily: "Kaisei Decol"
      );static get kaiseiDecol_400_11 =>
      theme.textTheme.headlineLarge!.kaiseiTokumin.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        fontFamily: "Kaisei Decol"
      );
  static get kaiseiDecol_700_11 =>
      theme.textTheme.headlineLarge!.kaiseiTokumin.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 11,
        fontWeight: FontWeight.w700,
        fontFamily: "Kaisei Decol"
      );
  static get kaisei_500_14_second =>
      theme.textTheme.headlineLarge!.kaiseiTokumin.copyWith(
        color: AppColors.second,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: "Kaisei Tokumin"
      );
  static get kaisei_500_10 =>
      theme.textTheme.headlineLarge!.kaiseiTokumin.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 10,
        fontWeight: FontWeight.w500,
        fontFamily: "Kaisei Tokumin"
      );
  // Label text style
  static get labelMediumKaiseiDecolOnPrimary =>
      theme.textTheme.labelMedium!.kaiseiDecol.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 11,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumKaiseiDecolOnPrimaryContainer =>
      theme.textTheme.labelMedium!.kaiseiDecol.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 11,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumKaiseiDecolPrimaryContainer =>
      theme.textTheme.labelMedium!.kaiseiDecol.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeKaiseiDecolOnPrimaryContainer =>
      theme.textTheme.titleLarge!.kaiseiDecol.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeKaiseiDecolPrimaryContainer =>
      theme.textTheme.titleLarge!.kaiseiDecol.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallKaiseiDecolOnPrimaryContainer =>
      theme.textTheme.titleSmall!.kaiseiDecol.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get kaiseiTokumin {
    return copyWith(
      fontFamily: 'Kaisei Tokumin',
    );
  }

  TextStyle get kaiseiDecol {
    return copyWith(
      fontFamily: 'Kaisei Decol',
    );
  }

  TextStyle get kantumruy {
    return copyWith(
      fontFamily: 'Kantumruy',
    );
  }

}