import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text('text')),
       /* FloatingActionButton(
          onPressed: showChooser,
          child: const Icon(Icons.add),
        ),*/


        GestureDetector(
          onTap:()=> DynamicTheme.of(context).setBrightness(Brightness.light),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.black),
                  color: Colors.white,

                )),

          ),
        ),
        GestureDetector(
          onTap:()=> DynamicTheme.of(context).setBrightness(Brightness.dark),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.black,
              ),
            ),
          ),
        ),



      ],
    );
  }

  /*void showChooser() {
    showDialog<void>(
        context: context,
        builder: (context) {
          return BrightnessSwitcherDialog(
            onSelectedTheme: (brightness) {
              DynamicTheme.of(context).setBrightness(brightness);
            },
          );
        });
  }*/
}
