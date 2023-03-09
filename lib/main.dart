import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'screens/screens.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Preferences.init;
runApp( const MyApp());
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
      theme: ThemeData.light(),
    );
  }
 }
