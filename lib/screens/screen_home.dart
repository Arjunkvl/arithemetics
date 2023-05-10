import 'package:arithemetics/screens/details_screen.dart';
import 'package:arithemetics/screens/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List controller = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  final List focusnode = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF8F7F4),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 150),
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
                          BoxtextField(
                            controller: controller[0],
                            focusNode: focusnode[0],
                            done: () => FocusScope.of(context)
                                .requestFocus(focusnode[1]),
                          ),
                          BoxtextField(
                            controller: controller[1],
                            focusNode: focusnode[1],
                            done: () => FocusScope.of(context)
                                .requestFocus(focusnode[2]),
                          ),
                          BoxtextField(
                            controller: controller[2],
                            focusNode: focusnode[2],
                            done: () => FocusScope.of(context)
                                .requestFocus(FocusNode()),
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
                      onPressed: () {
                        check(controller, context);
                      },
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

  check(controller, BuildContext context) {
    double first = double.tryParse(controller[0].text) ?? 0;
    double second = double.tryParse(controller[1].text) ?? 0;
    double third = double.tryParse(controller[2].text) ?? 0;

    if (second - first == third - second && controller[0].text != '') {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsScreen(controller: controller)));
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'The Sequence is worng',
                style: TextStyle(fontFamily: 'mono'),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      for (int i = 0; i < controller.length; i++) {
                        controller[i].clear();
                      }
                    },
                    child: const Text('Enter Again'))
              ],
            );
          });
    }
  }
}
