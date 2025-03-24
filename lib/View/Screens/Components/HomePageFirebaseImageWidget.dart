import 'package:flutter/material.dart';

class HomePageFirebaseImageWidget extends StatelessWidget {
  const HomePageFirebaseImageWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth <= 600 ? screenWidth * 0.60 : screenWidth * 0.3,
      height: screenWidth <= 600 ? screenHeight * 0.14 : screenHeight * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(top: screenHeight * 0.0),
      child: Image.asset(
        'assets/LOGO2.png',
        width: screenWidth * 0.8,
        height: screenHeight * 0.3,
        fit: BoxFit.contain,
      ),
    );
  }
}
