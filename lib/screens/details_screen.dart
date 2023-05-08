import 'package:arithemetics/screens/widgets_of_details_screen.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusScope(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
              top: MediaQuery.of(context).size.height * 0.15,
            ),
            child: const Column(
              children: [
                CustomText(label: 'Common \nDifference', eq: '2'),
                CustomText(label: 'Algebraic \nForm', eq: '2n+3'),
                CustomText(label: 'Algebraic \nForm of sum', eq: '2n+8'),
                Button(label: 'Calculate Sum'),
                Button(label: 'Find Terms'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
