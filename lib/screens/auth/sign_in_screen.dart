import 'package:flutter/material.dart';
import 'package:sidehustle_ui_task/screens/auth/sign_up_screen.dart';

import '../../widgets/box_widget.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/textfield_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEEEDF3),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: 85, left: 20, right: 16),

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/REPAIL LOGO 1.png',
                            color: Color(0xFF1F319D),
                          ),
                          Text('REPAIR HOME',style: TextStyle(color: Color(0xFF1F319D),fontSize: 32, fontFamily: 'Gobold', fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text('Login to your account',style: TextStyle( color: Color(0xFF1B1B1D),fontFamily: 'Gotham', fontSize: 20, fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 14,
                  ),
                  TextFieldWidget(
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  TextFieldWidget(
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  ButtonWidget(color: Color(0xFF1F319D), text: 'Log in', textColor: Colors.white),
                  SizedBox(
                    height: 56,
                  ),
                  Center(child: Text('. Or sign in with -', style: TextStyle(color: Color(0xFF1B1B1D).withOpacity(0.5),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500)),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxWidget(image: 'assets/images/flat-color-icons_google.png'),
                      BoxWidget(image: 'assets/images/eva_facebook-fill.png'),

                      BoxWidget(image: 'assets/images/Twitter.png'),


                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Center(child: Row(
                      children: [
                        Text('. Dont have an account?', style: TextStyle(color: Color(0xFF1B1B1D).withOpacity(0.5),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(width: 3,),
                        InkWell( onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                        },child: Text('Sign up', style: TextStyle(color: Colors.blueAccent.withOpacity(0.5),fontFamily: 'Gotham', fontSize: 16, fontWeight: FontWeight.w500))),

                      ],
                    ),),
                  ),


                ]),

          ),
        Positioned( left: -10,
          top: -30,
          child: Image.asset(
            'assets/images/Group 2.png',
            height: 353,
            width: 508,
          ),)

      ]
      ),
    );
  }
}

