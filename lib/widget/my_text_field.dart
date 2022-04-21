// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  TextInputType textInputType;
  String labelText;
  Color outLineBorderColor;
  TextEditingController textEditingController;

  MyTextField({
    this.textInputType = TextInputType.text,
    required this.labelText,
    required this.textEditingController,
    this.outLineBorderColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 5, end: 5, top: 10),
      child: TextField(
        controller: textEditingController,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: outLineBorderColor,
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: outLineBorderColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}

// TextField(
// controller: _emailController,
// keyboardType: TextInputType.emailAddress,
// decoration: InputDecoration(
// labelText: 'البريد الإلكتروني',
// enabledBorder: UnderlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFC653CB),
// width: 2,
// ),
// ),
// focusedBorder:  UnderlineInputBorder(
// borderSide: BorderSide(
// color: Color(0xFFC653CB),
// width: 2,
// ),
// ),
// ),
// ),

// decoration: InputDecoration(
// labelText: lableText,
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(
// color: outLineBorderColor,
// width: 2,
// ),
// borderRadius: BorderRadius.circular(22),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(22),
// borderSide: BorderSide(
// color: outLineBorderColor,
// width: 2,
// ),
// ),
// ),
