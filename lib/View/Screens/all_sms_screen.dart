import 'package:flutter/material.dart';
import '/View/Screens/Components/ChatNumberWidget.dart';

class SmsScreen extends StatelessWidget {
  const SmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "SMS",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF274D9E),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ChatNumberWidget(chatNumber: '05489922'),
              ChatNumberWidget(chatNumber: '29992929'),
              ChatNumberWidget(chatNumber: '89962199'),
            ],
          ),
        ));
  }
}
