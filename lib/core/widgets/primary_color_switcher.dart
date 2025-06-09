import 'package:theme_and_color_switcher/common.dart';

const double _containerWidth = 450.0;

class PrimaryColorSwitcher extends StatelessWidget {
  const PrimaryColorSwitcher({Key? key}) : super(key: key); // Added const constructor and key parameter

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) => SizedBox( // Changed parameter name from 'c' to 'context'
        height: (_containerWidth - (17 * 2) - (10 * 2)) / 3,
        child: GridView.count(
          crossAxisCount: AppColors.primaryColors.length,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          children: List.generate(
            AppColors.primaryColors.length,
                (i) {
              bool isSelectedColor = AppColors.primaryColors[i] == themeProvider.selectedPrimaryColor; // Removed underscore prefix
              return GestureDetector(
                onTap: isSelectedColor ? null : () => themeProvider.setSelectedPrimaryColor(AppColors.primaryColors[i]),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColors[i],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: isSelectedColor ? 1 : 0,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Theme.of(context).cardColor.withOpacity(0.5),
                          ),
                          child: const Icon(
                            Icons.check,
                            size: 20,
                          ),
                        ),
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

