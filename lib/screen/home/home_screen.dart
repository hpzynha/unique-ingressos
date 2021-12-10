import 'package:flutter/material.dart';
import 'package:ingressos/constant.dart';
import 'package:ingressos/screen/home/widget/login_and_register.dart';
import 'package:ingressos/screen/home/widget/login_with_facebook.dart';
import 'package:ingressos/screen/home/widget/slider_dot.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/logo1.png',
          ),
          SliderDot(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Seja Unique e planeje seu\nevento hoje!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          LoginAndRegister(),
          LoginWithFacebook(),
        ],
      ),
    );
  }
}
