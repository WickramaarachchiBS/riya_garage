import 'package:flutter/material.dart';
import '/View/Screens/HomeScreen.dart';
import '/View/Screens/sms_screen.dart';

class DynamicScreen extends StatefulWidget {
  const DynamicScreen({super.key});

  @override
  State<DynamicScreen> createState() => _DynamicScreenState();
}

List<String> options = ['Home', 'SMS'];

class _DynamicScreenState extends State<DynamicScreen> {
  String currentScreen = options[0]; // Default to Home

  Widget _getSelectedScreen() {
    switch (currentScreen) {
      case 'Home':
        return MyHomePage();
      case 'SMS':
        return SmsScreen();
      default:
        return MyHomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getSelectedScreen(),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Home option
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentScreen = options[0];
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio<String>(
                      value: options[0],
                      groupValue: currentScreen,
                      onChanged: (value) {
                        setState(() {
                          currentScreen = value!;
                        });
                      },
                    ),
                    Text('Home'),
                  ],
                ),
              ),
            ),
            // SMS option
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentScreen = options[1];
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio<String>(
                      value: options[1],
                      groupValue: currentScreen,
                      onChanged: (value) {
                        setState(() {
                          currentScreen = value!;
                        });
                      },
                    ),
                    Text('SMS'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
