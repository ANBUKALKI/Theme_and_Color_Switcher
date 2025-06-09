import 'package:theme_and_color_switcher/common.dart';


const double _containerWidth = 450.0;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key); // Added const constructor and key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme & Primary Color Switcher'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 17),
          width: _containerWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Theme'),
              ),
              const ThemeSwitcher(), // Made const
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Primary Color'),
              ),
              const PrimaryColorSwitcher(), // Made const
            ],
          ),
        ),
      ),
    );
  }
}
