import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

 await Preferences.init();
 runApp(
   MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(_) =>  ThemeProvider(isDarkmode:Preferences.isDarkmode))
    ],
    child: const MyApp(),
    )
   );
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.router,
      routes: {
        HomeScreen.router: (_) => const HomeScreen(),
       SettingsScreen.router: (_) => const SettingsScreen()


      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
 }
