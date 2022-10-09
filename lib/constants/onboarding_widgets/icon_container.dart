import 'package:flutter/material.dart';
import 'package:onbording_animation/constants/index.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final double padding;

  const IconContainer({
    super.key,
    required this.icon,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: kWhite.withOpacity(0.25),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 32.0,
        color: kWhite,
      ),
    );
  }
}
