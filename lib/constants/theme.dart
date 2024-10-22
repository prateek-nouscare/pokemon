import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287384160),
      surfaceTint: Color(4287384160),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957538),
      onPrimaryContainer: Color(4281992989),
      secondary: Color(4287056748),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957289),
      onSecondaryContainer: Color(4281861927),
      tertiary: Color(4286338613),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958273),
      onTertiaryContainer: Color(4281210112),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294310652),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4282337354),
      outline: Color(4285495675),
      outlineVariant: Color(4290758858),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4294947272),
      primaryFixed: Color(4294957538),
      onPrimaryFixed: Color(4281992989),
      primaryFixedDim: Color(4294947272),
      onPrimaryFixedVariant: Color(4285543240),
      secondaryFixed: Color(4294957289),
      onSecondaryFixed: Color(4281861927),
      secondaryFixedDim: Color(4294750423),
      onSecondaryFixedVariant: Color(4285281364),
      tertiaryFixed: Color(4294958273),
      onTertiaryFixed: Color(4281210112),
      tertiaryFixedDim: Color(4293901716),
      onTertiaryFixedVariant: Color(4284563232),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285214532),
      surfaceTint: Color(4287384160),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289093494),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284952656),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4288700547),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284300060),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287982665),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310652),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4282074182),
      outline: Color(4283916643),
      outlineVariant: Color(4285758590),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4294947272),
      primaryFixed: Color(4289093494),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287186781),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4288700547),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4286859370),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287982665),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286141491),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282519076),
      surfaceTint: Color(4287384160),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285214532),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282388014),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284952656),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281801473),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284300060),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310652),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280100135),
      outline: Color(4282074182),
      outlineVariant: Color(4282074182),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4294960875),
      primaryFixed: Color(4285214532),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283439406),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284952656),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283243065),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284300060),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282590728),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310652),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294947272),
      surfaceTint: Color(4294947272),
      onPrimary: Color(4283702578),
      primaryContainer: Color(4285543240),
      onPrimaryContainer: Color(4294957538),
      secondary: Color(4294750423),
      onSecondary: Color(4283505981),
      secondaryContainer: Color(4285281364),
      onSecondaryContainer: Color(4294957289),
      tertiary: Color(4293901716),
      onTertiary: Color(4282919179),
      tertiaryContainer: Color(4284563232),
      onTertiaryContainer: Color(4294958273),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279112726),
      onSurface: Color(4292797413),
      onSurfaceVariant: Color(4290758858),
      outline: Color(4287206036),
      outlineVariant: Color(4282337354),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4287384160),
      primaryFixed: Color(4294957538),
      onPrimaryFixed: Color(4281992989),
      primaryFixedDim: Color(4294947272),
      onPrimaryFixedVariant: Color(4285543240),
      secondaryFixed: Color(4294957289),
      onSecondaryFixed: Color(4281861927),
      secondaryFixedDim: Color(4294750423),
      onSecondaryFixedVariant: Color(4285281364),
      tertiaryFixed: Color(4294958273),
      onTertiaryFixed: Color(4281210112),
      tertiaryFixedDim: Color(4293901716),
      onTertiaryFixedVariant: Color(4284563232),
      surfaceDim: Color(4279112726),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948812),
      surfaceTint: Color(4294947272),
      onPrimary: Color(4281532951),
      primaryContainer: Color(4291197842),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294948314),
      onSecondary: Color(4281401889),
      secondaryContainer: Color(4290804896),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294164888),
      onTertiary: Color(4280684800),
      tertiaryContainer: Color(4290021474),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112726),
      onSurface: Color(4294376701),
      onSurfaceVariant: Color(4291022031),
      outline: Color(4288390311),
      outlineVariant: Color(4286285191),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4285609033),
      primaryFixed: Color(4294957538),
      onPrimaryFixed: Color(4281008146),
      primaryFixedDim: Color(4294947272),
      onPrimaryFixedVariant: Color(4284162616),
      secondaryFixed: Color(4294957289),
      onSecondaryFixed: Color(4280942619),
      secondaryFixedDim: Color(4294750423),
      onSecondaryFixedVariant: Color(4283966275),
      tertiaryFixed: Color(4294958273),
      onTertiaryFixed: Color(4280224768),
      tertiaryFixedDim: Color(4293901716),
      onTertiaryFixedVariant: Color(4283313937),
      surfaceDim: Color(4279112726),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947272),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294948812),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294948314),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294164888),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112726),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294180095),
      outline: Color(4291022031),
      outlineVariant: Color(4291022031),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4283176491),
      primaryFixed: Color(4294959078),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294948812),
      onPrimaryFixedVariant: Color(4281532951),
      secondaryFixed: Color(4294958828),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294948314),
      onSecondaryFixedVariant: Color(4281401889),
      tertiaryFixed: Color(4294959563),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294164888),
      onTertiaryFixedVariant: Color(4280684800),
      surfaceDim: Color(4279112726),
      surfaceBright: Color(4281612860),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,

     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
