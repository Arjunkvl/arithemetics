import 'package:arithemetics/screens/widgets_of_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class DetailsScreen extends StatefulWidget {
  final List controller;

  const DetailsScreen({super.key, required this.controller});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  TextEditingController term = TextEditingController();
  TextEditingController term2 = TextEditingController();

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FocusScope(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
              top: MediaQuery.of(context).size.height * 0.15,
            ),
            child: Column(
              children: [
                CustomText(
                  label: 'Common \nDifference',
                  eq: commonDifference(widget.controller),
                ),
                CustomText(
                  label: 'Algebraic \nForm of Terms',
                  eq: algebraOfTerm(widget.controller),
                ),
                CustomText(
                  label: 'Algebraic \nForm of Sum',
                  eq: sumEquation(widget.controller),
                ),
                Button(
                    label: 'Calculate Sum',
                    action: () => findSum(context, term)),
                Button(
                  label: 'Find Terms',
                  action: () => findTerm(context, term),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void findTerm(context, term) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Column(
              children: [
                const Text(
                  'Enter the Number',
                  style: TextStyle(
                    fontFamily: 'mono',
                    color: Color(0xffffffff),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.18,
                      right: MediaQuery.of(context).size.width * 0.18,
                      top: MediaQuery.of(context).size.width * 0.05),
                  child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'mono',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5B4F47),
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        text =
                            'The ${term.text} term is ${thTerm(widget.controller, term)} ';
                      });
                    },
                    controller: term,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 5, color: Color(0xffffffff)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 5, color: Color(0xffffffff)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.1),
                Text(
                  text,
                  style: const TextStyle(
                      fontFamily: 'mono',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5B4F47)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close',
                            style: TextStyle(
                                fontFamily: 'mono',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5B4F47)))),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            text = '';
                            term.text = '';
                          });
                        },
                        child: const Text(
                          'Clear',
                          style: TextStyle(
                              fontFamily: 'mono',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5B4F47)),
                        )),
                  ],
                )
              ],
            ),
          ),
          backgroundColor: Color(0xffBD9479),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
        );
      },
    );
  }

  void findSum(context, term) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Column(
              children: [
                const Text(
                  'Enter the Number',
                  style: TextStyle(
                    fontFamily: 'mono',
                    color: Color(0xffffffff),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.18,
                      right: MediaQuery.of(context).size.width * 0.18,
                      top: MediaQuery.of(context).size.width * 0.05),
                  child: TextField(
                    showCursor: false,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'mono',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5B4F47),
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        text =
                            'The sum of first ${term2.text} terms is ${sum(widget.controller, term2)} ';
                      });
                    },
                    controller: term2,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 5, color: Color(0xffffffff)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 5, color: Color(0xffffffff)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.1),
                Text(
                  text,
                  style: const TextStyle(
                      fontFamily: 'mono',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5B4F47)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close',
                            style: TextStyle(
                                fontFamily: 'mono',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5B4F47)))),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            text = '';
                            term2.text = '';
                          });
                        },
                        child: const Text(
                          'Clear',
                          style: TextStyle(
                              fontFamily: 'mono',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff5B4F47)),
                        )),
                  ],
                )
              ],
            ),
          ),
          backgroundColor: Color(0xffBD9479),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
        );
      },
    );
  }
}

String commonDifference(controller) {
  Parser p = Parser();
  Expression exp = p.parse('${controller[1].text}-${controller[0].text}');
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
  return eval.toString();
}

String algebraOfTerm(controller) {
  Parser p = Parser();
  Expression exp = p.parse('${controller[1].text}-${controller[0].text}');
  ContextModel cm = ContextModel();
  double d = exp.evaluate(EvaluationType.REAL, cm);
  Expression alg = p.parse('${controller[0].text}-$d');
  String eval = alg.evaluate(EvaluationType.REAL, cm).toString();
  Expression finalecpression = p.parse('${d}*n+$eval');
  return finalecpression.toString().replaceAll(RegExp('[()]'), '');
}

String sumEquation(controller) {
  Parser p = Parser();
  Expression exp = p.parse('${controller[1].text}-${controller[0].text}');
  ContextModel cm = ContextModel();
  exp.evaluate(EvaluationType.REAL, cm);
  Expression alge = p.parse('n/2 * ${controller[0].text} + n');
  return alge.toString().replaceAll(RegExp('[()]'), '');
}

String thTerm(controller, term) {
  Parser p = Parser();
  Expression exp = p.parse('${controller[1].text}-${controller[0].text}');
  ContextModel cm = ContextModel();
  double d = exp.evaluate(EvaluationType.REAL, cm);
  Expression t = p.parse('$d * ${term.text}+${controller[0].text}-$d');
  double r = t.evaluate(EvaluationType.REAL, cm);
  return r.toString();
}

String sum(controller, term) {
  Parser p = Parser();
  Expression exp = p.parse('${controller[1].text}-${controller[0].text}');
  ContextModel cm = ContextModel();
  double d = exp.evaluate(EvaluationType.REAL, cm);
  Expression t =
      p.parse('${term.text}/2*(2*${controller[0].text} + (${term.text}-1)*$d)');
  double r = t.evaluate(EvaluationType.REAL, cm);
  return r.toString();
}
