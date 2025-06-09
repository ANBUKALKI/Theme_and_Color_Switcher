import 'package:theme_and_color_switcher/common.dart';


class AppTheme {
  final ThemeMode mode;
  final String title;
  final IconData icon;

 const AppTheme({ required this.mode, required this.title, required this.icon});

}


const List<AppTheme> appThemes = [
  AppTheme(
      mode:ThemeMode.light,
    title: 'Light',
    icon: Icons.brightness_5_rounded,
  ),
  AppTheme(
    mode:ThemeMode.dark,
    title: 'Light',
    icon: Icons.brightness_2_rounded,
  ),
  AppTheme(
    mode:ThemeMode.system,
    title: 'Light',
    icon: Icons.brightness_4_rounded,
  ),


];