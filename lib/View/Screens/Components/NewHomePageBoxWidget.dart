import 'package:flutter/material.dart';

import '../../AppColors.dart';

class NewHomePageBoxWidget extends StatelessWidget {
  const NewHomePageBoxWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    required this.boxWidth,
    required this.image,
  });

  final double screenWidth;
  final double screenHeight;
  final String text;
  final double boxWidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.2,
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        color: AppColors.themeBlue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Shadow color with opacity
            spreadRadius: 6, // How much the shadow spreads
            blurRadius: 8, // Softening the shadow (higher value means more blur)
            offset: const Offset(0, 0), // Offset in the x and y directions
          ),
        ], // Make it a circle
      ),
      margin: EdgeInsets.only(top: screenHeight * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: screenWidth * 0.4, // Increase the image size (adjust as needed)
            height: screenHeight * 0.2, // Adjust height as needed
            fit: BoxFit.cover, // Maintain the aspect ratio of the image
          ),
        ],
      ),
    );
  }
}
