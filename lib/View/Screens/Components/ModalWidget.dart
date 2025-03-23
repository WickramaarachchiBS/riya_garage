import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Model/DetailsProvider.dart';
import 'package:riya_garage/View/Screens/Components/HomePageBoxWidget.dart';

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
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          child: Text(
            selectedModal,
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
                  child: Container(
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
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
                                  screenWidth: screenWidth,
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
                                  screenWidth: screenWidth,
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
                                  screenWidth: screenWidth,
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
                                  screenWidth: screenWidth,
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
