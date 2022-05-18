import 'package:flutter/material.dart';

class RepairListCard extends StatelessWidget {
  final String firstText;
  final String secondText;
  const RepairListCard({Key? key, required this.firstText, required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0XFFffffFF).withOpacity(0.70),
            border: Border.all(color: Color(0xFFE8E8E8))

          ),
          duration: Duration(microseconds: 300),
          curve: Curves.easeOut,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(firstText,style: TextStyle(color: Color(0xFF1B1B1D), fontFamily: 'Gotham', fontWeight: FontWeight.w500, fontSize: 13),),
    Text(secondText, style: TextStyle(color: Color(0xFF1B1B1D), fontFamily: 'Gotham', fontWeight: FontWeight.w500, fontSize: 13),),
    ],
    ),
          ),
      );
  }
}
