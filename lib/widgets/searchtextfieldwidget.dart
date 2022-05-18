import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 17.0,
      ),
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: Color(0xFFD3D3D3))
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 1,color: Color(0xFFD3D3D3) )
          ),

          fillColor: Color(0XFFFFFEFE),
          filled: true,
          hintText: 'Search appliances',
          hintStyle: TextStyle( color: Color(0XFFd3d3d3).withOpacity(0.5),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500),

          suffixIcon: Image.asset('assets/images/search_box_suffix.png')
      ),);
  }
}
