import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/DetailsProvider.dart';
import '../AppColors.dart';
import 'Components/HomePageBoxWidget.dart';
import 'Components/NewHomePageBoxWidget.dart';
import 'Components/HomePageFirebaseImageWidget.dart';
import 'Components/ModalWidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: AppColors.color7,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomePageFirebaseImageWidget(screenWidth: screenWidth, screenHeight: screenHeight),
                ],
              ),
              const ModalBottomSheet(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Provider.of<DetailsProvider>(context, listen: false).setCategory('Maintenance');
                      Navigator.pushNamed(context, '/districts');
                    },
                    child: NewHomePageBoxWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text: 'Maintenance & Repairs',
                      boxWidth: 0.40,
                      image: 'assets/Maintenance-Repairs-icon.png',
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<DetailsProvider>(context, listen: false).setCategory('SpareParts');
                      Navigator.pushNamed(context, '/districts');
                    },
                    child: NewHomePageBoxWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text: 'Maintenance & Repairs',
                      boxWidth: 0.40,
                      image: 'assets/SpareParts-BodyParts-icon.png',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Provider.of<DetailsProvider>(context, listen: false).setCategory('SpareParts');
                      Navigator.pushNamed(context, '/districts');
                    },
                    child: NewHomePageBoxWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text: 'Maintenance & Repairs',
                      boxWidth: 0.40,
                      image: 'assets/BreakdownServices.png',
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      Provider.of<DetailsProvider>(context, listen: false).setCategory('SpareParts');
                      Navigator.pushNamed(context, '/districts');
                    },
                    child: NewHomePageBoxWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      text: 'Maintenance & Repairs',
                      boxWidth: 0.40,
                      image: 'assets/TyreShopsServices.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
