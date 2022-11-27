import 'package:sample/presentation/widgets/widgets.dart';

const _kFontFamily = 'ComicSansMS';

const _kApplicationNameLogoColor = Colors.yellow;
const _kAppBarBackgroundColorDark = _kApplicationNameLogoColor;
const _kAppBarBackgroundColorLight = _kApplicationNameLogoColor;

const sampleHighlight = Colors.pink;

final _sampleTextThemeLight =
    ThemeData.light().textTheme.apply(fontFamily: _kFontFamily);

final _sampleTextThemeDark =
    ThemeData.dark().textTheme.apply(fontFamily: _kFontFamily);

final _sampleLightColorScheme = ColorScheme.fromSeed(
  seedColor: _kApplicationNameLogoColor,
  brightness: Brightness.light,
);

final _sampleDarkColorScheme = ColorScheme.fromSeed(
  seedColor: _kApplicationNameLogoColor,
  brightness: Brightness.dark,
);

final sampleLightTheme = ThemeData(
  textTheme: _sampleTextThemeLight,
  useMaterial3: true,
  colorScheme: _sampleLightColorScheme,
  fontFamily: _kFontFamily,
  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(
      _sampleLightColorScheme.onPrimary,
    ),
    fillColor: MaterialStateProperty.all(
      _sampleLightColorScheme.inversePrimary,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: _kAppBarBackgroundColorLight,
  ),
);

final sampleDarkTheme = ThemeData(
  textTheme: _sampleTextThemeDark,
  useMaterial3: true,
  colorScheme: _sampleDarkColorScheme,
  fontFamily: _kFontFamily,
  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(
      _sampleDarkColorScheme.onPrimary,
    ),
    fillColor: MaterialStateProperty.all(
      _sampleDarkColorScheme.inversePrimary,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: _kAppBarBackgroundColorDark,
  ),
);
