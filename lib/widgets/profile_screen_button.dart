import 'package:flutter/material.dart';

Widget profileScreenButton(
    {required String iconImage,
    required String btnText,
    required Color btnColor}) {
  return Container(
    width: 140,
    height: 48,
    decoration:
        BoxDecoration(color: btnColor, borderRadius: BorderRadius.circular(13)),
    child: Row(
      children: [
        IconButton(onPressed: () {}, icon: Image.asset(iconImage)),
        Text(
          btnText,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
