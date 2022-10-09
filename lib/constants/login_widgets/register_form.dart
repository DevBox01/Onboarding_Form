import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onbording_animation/constants/index.dart';

class RegisterForm extends StatelessWidget {
  final Animation<double> animation;

  const RegisterForm({
    super.key,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final space = height > 650 ? kSpaceM : kSpaceS;

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
            additionalOffset: 0.0,
            child: const CustomInputField(
              label: 'John joe',
              prefixIcon: CupertinoIcons.person,
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
              text: 'Register',
              onPressed: () {},
            ),
          ),
          SizedBox(height: 1 * space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: AlreadyHaveAnAccountCheck(
              login: false,
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
