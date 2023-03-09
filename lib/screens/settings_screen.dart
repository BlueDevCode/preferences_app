import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
   static const String router= "Settings";
   
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkmode= false;
  int gender = 1;
  String name = "Claudia";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title: const Text("Settings")
        ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("Ajustes", style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),),
              const Divider(),
              SwitchListTile.adaptive(
                value: isDarkmode, 
                title: const Text("Darkmode"),
                onChanged: ( value ){
                  isDarkmode= value;
                
                  setState(() {
                    
                  });

                }
              ),
              const Divider(),
              RadioListTile <int>(
                value: 1, 
                groupValue: gender, 
                title: const Text("Male"),
                onChanged: (value){
                  gender= value ?? 1;
                  setState(() {
                    
                  });
                }

                ),

                RadioListTile <int>(
                value: 2, 
                groupValue: gender, 
                title: const Text("Female"),
                onChanged: (value){
                  gender = value ?? 2 ;
                  setState((){});
                }
                ),
                const Divider(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: "Claudia",
                    onChanged: ((value) {
                      name = value ;
                      setState(() {
                        
                      });
                      
                    }),
                    decoration: const InputDecoration(
                      labelText: "Name",
                      helperText:"Name"
                      )
                  ),
                )
            ],
           
          )
        ,),
      )
    );
  }
}