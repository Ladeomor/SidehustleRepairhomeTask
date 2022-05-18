import 'package:flutter/material.dart';

import 'auth/sign_in_screen.dart';
import 'auth/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F319D),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/REPAIL LOGO 1.png'),
          Text(
            'REPAIR HOME',
            style: TextStyle(color: Color(0xFFEEEDF3), fontSize: 32, fontFamily: 'Gobold'),
          )
        ],
      )),
    );
  }
}
