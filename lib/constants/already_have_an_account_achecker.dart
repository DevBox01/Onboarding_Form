import 'package:flutter/material.dart';
import 'package:onbording_animation/constants/index.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final double? screenHeight;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
    this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "New member ?  " : "Already a member?  ",
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? "Register" : "Login",
            style: const TextStyle(
              color: kBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
