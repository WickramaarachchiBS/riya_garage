import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Model/DetailsProvider.dart';
import 'package:riya_garage/View/Screens/Components/HomePageBoxWidget.dart';
import '/View/AppColors.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({super.key});

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  String selectedModal = 'Vehicle Brand'; // Default to Home

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: SizedBox(
        width: screenWidth <= 600 ? screenWidth * 0.8 : screenWidth * 0.55,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColors.color3),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selectedModal,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 20.0),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 30.0,
              ),
            ],
          ),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              context: context,
              builder: (BuildContext context) {
                return SafeArea(
                  child: SizedBox(
                    height: screenWidth <= 600 ? screenWidth * 0.5 : screenWidth * 0.15,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Provider.of<DetailsProvider>(context, listen: false).setCompany('Bajaj');
                                  setState(() {
                                    selectedModal = 'BAJAJ';
                                  });
                                  Navigator.pop(context);
                                },
                                child: HomePageBoxWidget(
                                  screenWidth: screenWidth <= 600 ? screenWidth : screenWidth * 0.5,
                                  screenHeight: screenHeight * 0.3,
                                  text: 'BAJAJ',
                                  boxWidth: 0.40,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.05,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Provider.of<DetailsProvider>(context, listen: false).setCompany('Suzuki');
                                  setState(() {
                                    selectedModal = 'SUZUKI';
                                  });
                                  Navigator.pop(context);
                                },
                                child: HomePageBoxWidget(
                                  screenWidth: screenWidth <= 600 ? screenWidth : screenWidth * 0.5,
                                  screenHeight: screenHeight * 0.3,
                                  text: 'SUZUKI',
                                  boxWidth: 0.40,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Provider.of<DetailsProvider>(context, listen: false).setCompany('Toyota');
                                  setState(() {
                                    selectedModal = 'TOYOTA';
                                  });
                                  Navigator.pop(context);
                                },
                                child: HomePageBoxWidget(
                                  screenWidth: screenWidth <= 600 ? screenWidth : screenWidth * 0.5,
                                  screenHeight: screenHeight * 0.3,
                                  text: 'TOYOTA',
                                  boxWidth: 0.40,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.05,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Provider.of<DetailsProvider>(context, listen: false).setCompany('Honda');
                                  setState(() {
                                    selectedModal = 'HONDA';
                                  });
                                  Navigator.pop(context);
                                },
                                child: HomePageBoxWidget(
                                  screenWidth: screenWidth <= 600 ? screenWidth : screenWidth * 0.5,
                                  screenHeight: screenHeight * 0.3,
                                  text: 'HONDA',
                                  boxWidth: 0.40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
