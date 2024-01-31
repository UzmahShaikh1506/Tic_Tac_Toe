import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tictactoe/constants/colors.dart';
import 'package:tictactoe/screens/game.dart';
import 'package:google_fonts/google_fonts.dart';
//import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => GameScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  static var customFontWhite = TextStyle(
    fontFamily: "Coiny",
    color: Colors.white,
    letterSpacing: 3,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [MainColor.secondaryColor, MainColor.primaryColor],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.gamepad_rounded,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'TIC-TAC-TOE',
              style: customFontWhite,
              // style: TextStyle(
              //   color: Colors.white,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 20,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
