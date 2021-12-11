import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ingressos/constant.dart';
import 'package:ingressos/screen/login/widget/login_button.dart';
import 'package:ingressos/screen/login/widget/login_form.dart';
import 'package:ingressos/screen/login/widget/welcome_back.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeBack(),
          LoginForm(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: Text(
              'Esqueceu sua senha?',
              style: TextStyle(color: mPrimaryColor),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          LoginButton(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                TextSpan(text: 'Não tem um conta? '),
                TextSpan(
                  text: 'Registre-se',
                  style: TextStyle(
                    color: mPrimaryColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pop(context);
                    },
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: SizedBox(
        height: kToolbarHeight,
        child: Image.asset('assets/images/logo-1.png'),
      ),
      toolbarHeight: kToolbarHeight,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
