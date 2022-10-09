// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:onbording_animation/constants/index.dart';

class onBoarginHeader extends StatelessWidget {
  final VoidCallback onSkip;

  const onBoarginHeader({
    super.key,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Logo(
          color: kWhite,
          size: 32.0,
        ),
        GestureDetector(
          onTap: onSkip,
          child: Text(
            'Skip',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: kWhite,
                ),
          ),
        ),
      ],
    );
  }
}
