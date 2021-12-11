import 'package:flutter/material.dart';
import 'package:ingressos/screen/list/list_screen.dart';

import '../../../constant.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(color: mPrimaryColor),
          ),
          primary: mPrimaryColor,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ListScreen();
            }),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          alignment: Alignment.center,
          width: double.infinity,
          child: Text('Entrar'),
        ),
      ),
    );
  }
}
