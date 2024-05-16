
import 'package:calc_upeux/theme/theme_base.dart';
import 'package:flutter/material.dart';

class MaterialThemeBlue {
  final TextTheme textTheme;

  const MaterialThemeBlue(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4283260050),
      surfaceTint: Color(4283260050),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292665855),
      onPrimaryContainer: Color(4278458187),
      secondary: Color(4284046706),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292796921),
      onSecondaryContainer: Color(4279638828),
      tertiary: Color(4285879407),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957045),
      onTertiaryContainer: Color(4281078314),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4282730063),
      outline: Color(4285953664),
      outlineVariant: Color(4291216848),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294045943),
      inversePrimary: Color(4290168063),
      primaryFixed: Color(4292665855),
      onPrimaryFixed: Color(4278458187),
      primaryFixedDim: Color(4290168063),
      onPrimaryFixedVariant: Color(4281681017),
      secondaryFixed: Color(4292796921),
      onSecondaryFixed: Color(4279638828),
      secondaryFixedDim: Color(4290954717),
      onSecondaryFixedVariant: Color(4282533465),
      tertiaryFixed: Color(4294957045),
      onTertiaryFixed: Color(4281078314),
      tertiaryFixedDim: Color(4293114586),
      onTertiaryFixedVariant: Color(4284169559),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281417844),
      surfaceTint: Color(4283260050),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284707498),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282270293),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285559945),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283906387),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287457926),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4282466891),
      outline: Color(4284374631),
      outlineVariant: Color(4286151299),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294045943),
      inversePrimary: Color(4290168063),
      primaryFixed: Color(4284707498),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283128207),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285559945),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283915119),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287457926),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285682285),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }
}