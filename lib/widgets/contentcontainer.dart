import 'package:flutter/material.dart';

import '../constants.dart';
class ContentContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final double size;
  final String firstText;
  final String secondText;
  final String image;

  const ContentContainer({
    Key? key,
    required this.backgroundColor,
    required this.size,
    required this.progress,
    required this.progressColor,
    required this.firstText,
    required this.secondText,
    required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:  Radius.circular(30), topRight:  Radius.circular(30)),
                color: backgroundColor
            ),
            width: 265,
            height: 74,

            child: Center(child: Text(firstText, style: bigTextStyle),)),


        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(30), bottomRight:  Radius.circular(30)),
              color: progressColor
          ),
          width: 265,
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(secondText, style: TextStyle(color: Color(0xFF000000),fontFamily: 'Gotham', fontSize: 15, fontWeight: FontWeight.w500),),),

              SizedBox(width: 70,),
              Image.asset(image)
            ],
          ),
        )
      ],
    );
  }
}

