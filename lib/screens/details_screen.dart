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
                left: MediaQuery.of(context).size.height * 0.05,
                top: MediaQuery.of(context).size.height * 0.15,
                right: MediaQuery.of(context).size.height * 0.05),
            child: const Column(
              children: [
                CustomText(label: 'Common Difference', eq: '2'),
                CustomText(label: 'sum equation', eq: '2'),
                CustomText(label: 'term equation', eq: '2'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String label;
  final String eq;
  const CustomText({super.key, required this.label, required this.eq});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
            child: Text(
              label,
              style: const TextStyle(
                fontFamily: 'mono',
                color: Color(0xff5B4F47),
                fontSize: 40,
              ),
            ),
          ),
        ),
        Text(
          eq,
          style: const TextStyle(
            fontFamily: 'mono',
            color: Color(0xff5B4F47),
            fontSize: 40,
          ),
        )
      ],
    );
  }
}
