import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: const Text(
                      'Enter Numbers',
                      style: TextStyle(
                          color: Color(0xff5B4F47),
                          fontFamily: 'mono',
                          fontSize: 50,
                          fontWeight: FontWeight.w500),
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
                              style: TextStyle(fontSize: 55),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xffffffff)))),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: const TextField(
                              style: TextStyle(fontSize: 55),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xffffffff)))),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                            child: const TextField(
                              style: TextStyle(fontSize: 55),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          width: 5, color: Color(0xffffffff)))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color(0xff745E4D),
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
