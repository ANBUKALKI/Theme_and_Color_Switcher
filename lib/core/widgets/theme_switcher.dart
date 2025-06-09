import 'package:theme_and_color_switcher/common.dart';

const double _containerWidth = 450.0;

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key); // Added const constructor and key parameter

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) => SizedBox( // Changed parameter name from 'c' to 'context'
        height: (_containerWidth - (17 * 2) - (10 * 2)) / 3,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          crossAxisCount: appThemes.length,
          children: List.generate(
            appThemes.length,
                (i) {
              bool isSelectedTheme = appThemes[i].mode == themeProvider.selectedThemeMode; // Removed underscore prefix
              return GestureDetector(
                onTap: isSelectedTheme ? null : () => themeProvider.setSelectedThemeMode(appThemes[i].mode),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    color: isSelectedTheme ? Theme.of(context).primaryColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Theme.of(context).primaryColor),
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).cardColor.withOpacity(0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(appThemes[i].icon),
                          Text(
                            appThemes[i].title,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}