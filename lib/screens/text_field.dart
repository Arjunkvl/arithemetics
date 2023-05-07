import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BoxtextField extends StatelessWidget {
  const BoxtextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.26,
        child: TextField(
          textAlign: TextAlign.center,
          maxLength: 1,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
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
        ),
      ),
    );
  }
}
