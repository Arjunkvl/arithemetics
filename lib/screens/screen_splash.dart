import 'package:arithemetics/screens/screen_home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(
        0xffF8F7F4,
      ),
      body: FocusScope(
        child: SafeArea(
            child: Column(
          children: [
            Expanded(
                child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 150,
                  bottom: 150,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   height: 50,
                    // ),

                    Text('Arithemetic\n Calculator',
                        style: TextStyle(
                            fontFamily: 'mono',
                            fontWeight: FontWeight.w500,
                            fontSize: 50,
                            color: Color(0xff5B4F47))),
                    Text('1,2,3,...',
                        style: TextStyle(
                            fontFamily: 'mono',
                            fontSize: 50,
                            color: Color(0xff5B4F47))),
                    Text('Calculate\nSequence\nEasly',
                        style: TextStyle(
                            fontFamily: 'mono',
                            fontSize: 40,
                            color: Color(0xff5B4F47))),
                  ],
                ),
              ),
            ))
          ],
        )),
      ),
    );
  }

  Future gotoHome(ctx) async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.push(
        ctx, MaterialPageRoute(builder: ((context) => const HomePage())));
  }
}
