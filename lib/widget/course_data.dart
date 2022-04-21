// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDataWidget extends StatelessWidget{
  String courseName;

  CourseDataWidget({
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        title: Text(courseName,style: TextStyle(color: Colors.black),),
        trailing: TextButton(
            onPressed: () {},
            child: Text(
              'تعديل',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFFC653CB),
              ),
            )),
      ),
    );
  }
}
