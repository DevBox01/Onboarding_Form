// ignore_for_file: non_constant_identifier_names, dead_code
import 'package:flutter/material.dart';

Widget SocialNetworkSignin(
  BuildContext context, {
  VoidCallback? onTap,
  required String assetName,
}) {
  final brightness = Theme.of(context).brightness;
  var myColor = (brightness == Brightness.light)
      ? Colors.white.withOpacity(0.8)
      : Colors.grey.withOpacity(0.1);
  var boxColor = (brightness == Brightness.light)
      ? Colors.grey
      : Colors.grey.withOpacity(0.1);

  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: boxColor,
            blurRadius: 15.0,
            spreadRadius: 2.0,
            offset: const Offset(
              5.0,
              5.0,
            ),
          )
        ],
      ),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.white,
        child: Image.asset(
          'assets/icons/$assetName',
          width: 25,
        ),
      ),
    ),
  );
}

Widget socialApp(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Google
        SocialNetworkSignin(context, assetName: 'google-plus.png'),
        const SizedBox(width: 20),
        SocialNetworkSignin(context, assetName: 'facebook.png'),
        const SizedBox(width: 20),
        SocialNetworkSignin(context, assetName: 'phone.png'),
        const SizedBox(width: 20),
        SocialNetworkSignin(context, assetName: 'twitter.png'),
      ],
    ),
  );
}
