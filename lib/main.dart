import 'package:flutter/material.dart';
import 'package:sidehustle_ui_task/screens/cart_screen.dart';
import 'package:sidehustle_ui_task/screens/splash_screen.dart';

void main() {
  runApp(const RepairHome());
}

class RepairHome extends StatelessWidget {
  const RepairHome({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repair Home',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

