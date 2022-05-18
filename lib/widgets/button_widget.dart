import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;

  const ButtonWidget(
      {Key? key,
        required this.color,
        required this.text,
        required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329,
      height: 63,
      decoration:
      BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFF1F319D),
            offset: Offset(6, 4),
            blurRadius: 10,
            spreadRadius: 0,
          )
        ],
        color: color, borderRadius: BorderRadius.circular(10),

      ),
      child: Center(
        child: Text(text,
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}

