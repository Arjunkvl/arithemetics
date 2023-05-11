import 'package:arithemetics/screens/widgets_of_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class DetailsScreen extends StatelessWidget {
  final List controller;
  const DetailsScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  eq: commonDifference(controller),
                ),
                CustomText(
                  label: 'Algebraic \nForm of Terms',
                  eq: algebraOfTerm(controller),
                ),
                CustomText(
                  label: 'Algebraic \nForm of Sum',
                  eq: sumEquation(controller),
                ),
                Button(label: 'Calculate Sum'),
                Button(label: 'Find Terms'),
              ],
            ),
          ),
        ),
      ),
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
