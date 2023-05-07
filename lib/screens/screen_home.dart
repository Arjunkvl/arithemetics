import 'package:arithemetics/screens/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF8F7F4),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.10),
                    child: const FittedBox(
                      child: Text(
                        'Enter Numbers',
                        softWrap: false,
                        style: TextStyle(
                            color: Color(0xff5B4F47),
                            fontFamily: 'mono',
                            fontSize: 50,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    child: const Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoxtextField(),
                          BoxtextField(),
                          BoxtextField(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.10),
                    child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      onPressed: () {},
                      color: const Color(0xff745E4D),
                      child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.05),
                        child: const Text(
                          'Show Details',
                          style: TextStyle(
                              fontFamily: 'mono',
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
