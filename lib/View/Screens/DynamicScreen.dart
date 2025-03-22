import 'package:flutter/material.dart';
import '/View/Screens/HomeScreen.dart';
import '/View/Screens/all_sms_screen.dart';

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
      bottomNavigationBar: SizedBox(
        height: 80.0,
        child: Container(
          color: const Color(0xFFCCC2C2),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
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
                      ],
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
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
                      ],
                    ),
                    const Text(
                      'SMS',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// // Home option
// Expanded(
// child: InkWell(
// onTap: () {
// setState(() {
// currentScreen = options[0];
// });
// },
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Radio<String>(
// value: options[0],
// groupValue: currentScreen,
// onChanged: (value) {
// setState(() {
// currentScreen = value!;
// });
// },
// ),
// Text('Home'),
// ],
// ),
// ),
// ),
// // SMS option
// Expanded(
// child: InkWell(
// onTap: () {
// setState(() {
// currentScreen = options[1];
// });
// },
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Radio<String>(
// value: options[1],
// groupValue: currentScreen,
// onChanged: (value) {
// setState(() {
// currentScreen = value!;
// });
// },
// ),
// Text('SMS'),
// ],
// ),
// ),
// ),
// ],
