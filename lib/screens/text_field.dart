import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BoxtextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function done;
  const BoxtextField(
      {super.key,
      required this.controller,
      required this.focusNode,
      required this.done});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.26,
      child: TextField(
        textAlign: TextAlign.center,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        showCursor: false,
        style: const TextStyle(
            fontSize: 50,
            fontFamily: 'mono',
            fontWeight: FontWeight.w900,
            color: Color(0xff5B4F47)),
        decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 5, color: Color(0xffffffff)),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(width: 5, color: Color(0xff745E4D)))),
        focusNode: focusNode,
        onEditingComplete: () => done(),
        controller: controller,
      ),
    );
  }
}
