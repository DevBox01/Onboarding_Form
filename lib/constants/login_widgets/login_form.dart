// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onbording_animation/constants/index.dart';

class LoginForm extends StatelessWidget {
  final double? screenHeight;
  final Animation<double> animation;

  const LoginForm({
    super.key,
    required this.animation,
    this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final space = height > 650 ? kSpaceM : kSpaceS;

//

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: const CustomInputField(
              label: 'Email ID',
              prefixIcon: CupertinoIcons.at,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: const CustomInputField(
              label: 'Password',
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 2 * space,
            child: CustomButton(
              color: kBlue,
              textColor: kWhite,
              text: 'Login',
              onPressed: () {},
            ),
          ),
          SizedBox(height: 1 * space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: AlreadyHaveAnAccountCheck(
              login: true,
              press: () {},
            ),
          ),
          SizedBox(height: 1 * space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: const OrDivider(),
          ),
          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 4 * space,
            child: socialApp(context),
          ),
        ],
      ),
    );
  }
}
