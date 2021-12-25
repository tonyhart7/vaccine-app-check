part of 'app_utils.dart';

Brightness brightness = SchedulerBinding.instance!.window.platformBrightness;
bool isDarkMode = brightness == Brightness.dark;

class AppThemes {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: colorScheme.background,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: isDarkMode ? const Color(0xDDFFFFFF) : const Color(0x89000000),
        ),
        actionsIconTheme: IconThemeData(
          color: isDarkMode ? const Color(0xDDFFFFFF) : const Color(0x89000000),
        ),
        titleTextStyle: TextStyle(
          color: isDarkMode ? const Color(0xDDFFFFFF) : const Color(0xDD000000),
        ),
        centerTitle: true,
        toolbarTextStyle: TextStyle(
          color: isDarkMode ? const Color(0xDDFFFFFF) : const Color(0xDD000000),
        ),
      ),
      bottomAppBarColor: colorScheme.background,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: isDarkMode ? const Color(0xDDFFFFFF) : const Color(0xDD000000),
        ),
      ),
      colorScheme: colorScheme,
      backgroundColor: colorScheme.background,
      cardColor: colorScheme.background,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF4A6572),
    primaryVariant: Color(0xFF344955),
    secondary: Color(0xFFF9AA33),
    secondaryVariant: Color(0xFFF9AA33),
    background: Color(0xFFECEDF1),
    surface: Color(0xFFFAFBFB),
    error: Colors.red,
    onPrimary: Colors.grey,
    onSecondary: Color(0xFF322942),
    brightness: Brightness.light,
    onBackground: Colors.white,
    onSurface: Color(0xFF241E30),
    onError: Colors.white,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFF1EB980),
    primaryVariant: Color(0xFF045D56),
    secondary: Color(0xFFFFCF44),
    secondaryVariant: Color(0xFFFF6859),
    background: Color(0xFF272154),
    surface: Color(0xff1E2746),
    // White with 0.05 opacity
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    brightness: Brightness.dark,
    onBackground: Colors.white,
    onSurface: Colors.white,
    error: Colors.white,
  );
}
