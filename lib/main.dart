import 'package:theme_and_color_switcher/common.dart';
import 'package:device_preview/device_preview.dart';


void main(){
  runApp(DevicePreview(
    enabled: true,
      builder: (context) => MyApp())
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider(),)
    ],
      child:Consumer<ThemeProvider>(
          builder: (context, themeProvider, child){

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: themeProvider.selectedThemeMode,
              theme: ThemeData(
                brightness: Brightness.light,
                primarySwatch: AppColors.getMaterialColorFromColor(themeProvider.selectedPrimaryColor),
                primaryColor: themeProvider.selectedPrimaryColor,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: AppColors.getMaterialColorFromColor(themeProvider.selectedPrimaryColor),
                primaryColor: themeProvider.selectedPrimaryColor,
              ),
              home: const HomePage(),
            );
          }
          // child: const HomePage(),
      ),

    );

  }
}
