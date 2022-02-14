// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyElvatedButton extends StatelessWidget {
  String text;
  Color textColor;
  double buttonHeight;
  double buttonWidth;
  Color buttonColor;
  double? buttonRadius;
  Color? buttonSideColor;
  VoidCallback? toDo;

  MyElvatedButton({
    required this.toDo,
    required this.text,
    required this.textColor,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonColor,
    this.buttonRadius,
    this.buttonSideColor,
  }
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: toDo,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(buttonWidth, buttonHeight),
        primary: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonRadius??50)),
          side: BorderSide(color: buttonSideColor??buttonColor, width: 3),
        ),
      ),
    );
  }
}