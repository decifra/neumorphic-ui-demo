import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xffdbe2ef),
        lightSource: LightSource.topLeft,
        intensity: 0.5,
        depth: 10,
        defaultTextColor: Color(0xFF282846),
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF282846),
        lightSource: LightSource.topLeft,
        depth: 10,
        intensity: 0.3,
        defaultTextColor: Color(0xffdbe2ef),
      ),
      home: HomeScreen(),
    );
  }
}
