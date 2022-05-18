import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  const OrderButton({Key? key, required this.color, required this.text, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color
      ),
      child: Center(child: Text(text, style: TextStyle(color: textColor, fontFamily: 'Gotham', fontWeight: FontWeight.w500, fontSize: 13),)),
    );
  }
}
