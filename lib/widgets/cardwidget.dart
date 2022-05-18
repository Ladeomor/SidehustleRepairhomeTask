import 'package:flutter/material.dart';

import '../constants.dart';

class CardWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String leadingImage;
  final String trailingImage;
  const CardWidget({
    Key? key,
    required this.firstText,
   this.secondText = '',
     this.leadingImage = '',
   this.trailingImage = 'assets/images/Arrow 1.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: Color(0xFFD6E3FF),
        border: Border.all(color: Color(0xFFEAEAEA)),
        borderRadius: BorderRadius.circular(10.0),

      ),
      height: 70,
      duration: Duration(microseconds: 21),
      curve: Curves.easeIn,
      child: ListTile(
      title: Text(firstText, style: textStylee,),
      subtitle: Text(secondText, style: smallTextStylee,),
      leading: Container(
          decoration: BoxDecoration(
            color: Color(0XFFC7D9FF),
            borderRadius: BorderRadius.circular(10.0),

          ),
        height: 45,
          width: 45,
          child: Image.asset(leadingImage)),
      trailing: Image.asset(trailingImage)),
    );
  }
}



