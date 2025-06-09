import 'package:theme_and_color_switcher/common.dart';


class ThemeProvider with ChangeNotifier {
  ThemeMode selectedThemeMode = appThemes[0].mode;
  Color selectedPrimaryColor = AppColors.primaryColors[0];

  void setSelectedThemeMode(ThemeMode themeMode){

    if (selectedThemeMode != themeMode){
      selectedThemeMode = themeMode;
      notifyListeners();
    }
  }

  void setSelectedPrimaryColor(Color color){
    if(selectedPrimaryColor != color){
      selectedPrimaryColor = color;
      notifyListeners();
    }
  }
}