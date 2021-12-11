import 'package:flutter/material.dart';
import 'package:ingressos/screen/login/login_screen.dart';

import '../../../constant.dart';

class LoginAndRegister extends StatelessWidget {
  const LoginAndRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                ),
                primary: Colors.white,
                backgroundColor: mPrimaryColor,
              ),
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text('Registre-se'),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
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
                    return const LoginScreen();
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
          ),
        ],
      ),
    );
  }
}
