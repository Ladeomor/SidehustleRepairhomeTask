import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  final String firstText;
  final String trailingText;
  const CartList({Key? key,
    required this.firstText,
    required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
    borderRadius: BorderRadius.circular(15.0),
    child: Container(
    height: 70,
    child: Card(

    color: Color(0XFFD6E3FF).withOpacity(0.70),
    child:ListTile(
    title: Text(firstText),
    leading: Container(
      decoration: BoxDecoration(
        color: Color(0xffca1414),
        shape: BoxShape.circle
      ),
      child: Image.asset('assets/images/Line 3.png'),
  ),
    trailing: Text(trailingText))),
    ));

  }
}
