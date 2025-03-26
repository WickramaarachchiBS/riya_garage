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
                      _handleTap(context, 'Maintenance', '/searchTown');
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
                      _handleTap(context, 'SpareParts', '/searchTown');
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
                      _handleTap(context, 'Maintenance', '/searchTown');
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
                      _handleTap(context, 'SpareParts', '/searchTown');
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

void _handleTap(BuildContext context, String category, String route) {
  final detailsProvider = Provider.of<DetailsProvider>(context, listen: false);
  detailsProvider.setCategory(category);

  // Check if company is null or empty
  if (detailsProvider.company == null || detailsProvider.company!.isEmpty) {
    _showCompanySelectionAlert(context);
  } else {
    Navigator.pushNamed(context, route);
  }
}

void _showCompanySelectionAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Select Company First'),
        content: const Text('Please select a vehicle brand before proceeding.'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      );
    },
  );
}
