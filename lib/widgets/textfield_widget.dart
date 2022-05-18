import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFieldWidget({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.12),
          offset: Offset(6, 4),
          blurRadius: 10,
          spreadRadius: 0,
        )
      ]),
      child: TextField(
        style: TextStyle(
          fontSize: 17.0,
        ),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle( color: Color(0XFF1B1B1D).withOpacity(0.5),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFFFFEFE),
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color(0xFFFFFEFE),

                )
            ),

            //enabled: false,
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(30)),
      ),
    );
  }
}

