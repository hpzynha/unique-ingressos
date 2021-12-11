import 'package:flutter/material.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({
    Key? key,
  }) : super(key: key);

  get mPrimaryTextColor => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Text(
        'Bem vindo de volta!',
        style: TextStyle(
            color: mPrimaryTextColor,
            fontSize: 32,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
