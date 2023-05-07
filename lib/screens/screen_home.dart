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
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              maxLengthEnforcement: MaxLengthEnforcement.none,
                              showCursor: false,
                              style: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'mono',
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff5B4F47)),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xffffffff)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xff745E4D)))),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              maxLengthEnforcement: MaxLengthEnforcement.none,
                              showCursor: false,
                              style: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'mono',
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff5B4F47)),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xffffffff)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xff745E4D)))),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              maxLengthEnforcement: MaxLengthEnforcement.none,
                              showCursor: false,
                              style: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'mono',
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff5B4F47)),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xffffffff)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xff745E4D)))),
                            ),
                          ),
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
