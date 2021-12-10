import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background-1.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Image(
            image: AssetImage('assets/images/logo-3.png'),
            width: 300,
          ),
        ),
      ),
    );
  }
}
