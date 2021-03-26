import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: screenHeight * 0.5,
              width: screenWidth * 0.9,
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.red),
              // ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    child: Container(
                      width: screenWidth * 0.9,
                    ),
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    child: Container(
                      width: screenWidth * 0.75,
                    ),
                  ),
                  Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: -1.0,
                    ),
                    child: Container(
                      width: screenWidth * 0.55,
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.45,
                    child: Container(
                      width: 70,
                      height: 4,
                      color: Colors.purple,
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.42,
                    top: screenHeight * 0.28,
                    child: Transform.rotate(
                      angle: 0.7,
                      child: Container(
                        width: 90,
                        height: 4,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth * 0.27,
                    top: screenHeight * 0.29,
                    child: Container(
                      child: Transform.rotate(
                        angle: -0.9,
                        child: Container(
                          width: 95,
                          height: 1,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            NeumorphicText(
              "3:23 PM",
              textStyle: NeumorphicTextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              style: NeumorphicStyle(
                color: NeumorphicTheme.defaultTextColor(context),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NeumorphicText(
              "Deventer, NL",
              textStyle: NeumorphicTextStyle(
                fontSize: 16,
              ),
              style: NeumorphicStyle(
                color: NeumorphicTheme.defaultTextColor(context),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NeumorphicSwitch(
              height: 45,
              value: isDarkMode,
              style: NeumorphicSwitchStyle(
                activeTrackColor: Color(0xff343f56),
              ),
              onChanged: (value) {
                setState(() {
                  isDarkMode = !isDarkMode;
                  if (isDarkMode) {
                    NeumorphicTheme.of(context).themeMode = ThemeMode.dark;
                  } else {
                    NeumorphicTheme.of(context).themeMode = ThemeMode.light;
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
