import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String router= "Home";
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),

      ),
      drawer:const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Darkmode"),
          Divider(),
          Text("Genre"),
          Divider(),
           Text("Username"),
           Divider()
        ],

      )
    );
  }
}