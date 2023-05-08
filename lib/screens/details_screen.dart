import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'Common Difference',
                style: TextStyle(fontFamily: 'mono'),
              ),
              Text(
                '2',
                style: TextStyle(fontFamily: 'mono'),
              )
            ],
          ),
          Row(),
          Row(),
        ],
      ),
    );
  }
}
