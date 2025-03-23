import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Model/DetailsProvider.dart';
import 'package:riya_garage/View/Screens/Components/HomePageBoxWidget.dart';
import '/View/AppColors.dart';

class ModalDistrictBottomSheet extends StatefulWidget {
  const ModalDistrictBottomSheet({super.key});

  @override
  State<ModalDistrictBottomSheet> createState() => _ModalDistrictBottomSheetState();
}

class _ModalDistrictBottomSheetState extends State<ModalDistrictBottomSheet> {
  String selectedModal = 'District'; // Default to Home

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppColors.color3),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
            ),
          ),
          child: Text(
            selectedModal,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19.0,
              fontWeight: FontWeight.bold,
            ),
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
                                  Provider.of<DetailsProvider>(context, listen: false).setProvince('SouthernProvince');
                                  setState(() {
                                    selectedModal = 'Sothern';
                                  });
                                  Navigator.pop(context);
                                },
                                child: HomePageBoxWidget(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight * 0.3,
                                  text: 'Sothern',
                                  boxWidth: 0.40,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.05,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Provider.of<DetailsProvider>(context, listen: false).setProvince('WesternProvince');
                                  setState(() {
                                    selectedModal = 'Western';
                                  });
                                  Navigator.pop(context);
                                },
                                child: HomePageBoxWidget(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight * 0.3,
                                  text: 'Western',
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
