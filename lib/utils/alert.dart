// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trateel_mobile/widget/my_text_field.dart';

mixin Alert {
  void showCourseDialog(BuildContext context,TextEditingController _courseNameController,TextEditingController _courseDateController) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'بيانات الدورة',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xFFC653CB),
              ),
            ),
            content: Column(
              children: [
                MyTextField(
                  labelText: 'إسم الدورة',
                  outLineBorderColor: Color(0xFFC653CB),
                  textEditingController: _courseNameController,
                  textInputType: TextInputType.text,
                ),
                MyTextField(
                  labelText: 'تاريخ الدورة',
                  outLineBorderColor: Color(0xFFC653CB),
                  textEditingController: _courseDateController,
                  textInputType: TextInputType.datetime,
                ),
              ],
            ),
          );
        });
  }
}
