import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class LoginWithFacebook extends StatelessWidget {
  const LoginWithFacebook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(
              color: mFacebookColor,
            ),
          ),
        ),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/facebook.svg'),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Conecte com o Facebook',
                  style: TextStyle(
                    color: mFacebookColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
