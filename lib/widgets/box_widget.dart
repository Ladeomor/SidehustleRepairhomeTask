import 'package:flutter/material.dart';
import 'package:sidehustle_ui_task/screens/auth/sign_up_screen.dart';
class BoxWidget extends StatelessWidget {
  final String image;
  const BoxWidget(
      {Key? key,
        required this.image,
      })
      : super(key: key);


  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 63,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: BorderRadius.all(Radius.circular(12.0))
      ),
      child: Center(child: Image.asset(image)),
    );
  }
}
