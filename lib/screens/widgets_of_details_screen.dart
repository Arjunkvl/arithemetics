import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final String eq;
  const CustomText({super.key, required this.label, required this.eq});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'mono',
              color: Color(0xff5B4F47),
              fontSize: 30,
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
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String label;
  const Button({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.04,
      ),
      child: MaterialButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        onPressed: () {},
        color: const Color(0xff745E4D),
        child: FittedBox(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
            child: Text(
              label,
              style: const TextStyle(
                  fontFamily: 'mono', color: Color(0xffffffff), fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
