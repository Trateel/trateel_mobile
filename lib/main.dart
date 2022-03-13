// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trateel_mobile/screens/done_screen.dart';
import 'package:trateel_mobile/screens/launch_screen.dart';
import 'package:trateel_mobile/screens/login_screen.dart';
import 'package:trateel_mobile/screens/onboarding_screen.dart';
import 'package:trateel_mobile/screens/request_access_screen.dart';
import 'package:trateel_mobile/screens/student%20screens/student_form_1.dart';
import 'package:trateel_mobile/screens/student%20screens/student_form_2.dart';
import 'package:trateel_mobile/screens/student%20screens/student_form_3.dart';
import 'package:trateel_mobile/screens/student%20screens/student_form_4.dart';
import 'package:trateel_mobile/screens/student%20screens/student_form_5.dart';
import 'package:trateel_mobile/screens/teacher%20screens/teacher_form_1.dart';
import 'package:trateel_mobile/screens/teacher%20screens/teacher_form_2.dart';
import 'package:trateel_mobile/screens/teacher%20screens/teacher_form_3.dart';
import 'package:trateel_mobile/screens/teacher%20screens/teacher_form_4.dart';

void main() => runApp(const Trateel());

class Trateel extends StatelessWidget {
  const Trateel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/onboarding_screen': (context) => OnBoardingScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/request_access_screen': (context) => RequestAccessScreen(),
        '/teacher_form_1': (context) => TeacherForm1(),
        '/teacher_form_2': (context) => TeacherForm2(),
        '/teacher_form_3': (context) => TeacherForm3(),
        '/teacher_form_4': (context) => TeacherForm4(),
        '/done_screen': (context) => DoneScreen(),
        '/student_form_1': (context) => StudentForm1(),
        '/student_form_2': (context) => StudentForm2(),
        '/student_form_3': (context) => StudentForm3(),
        '/student_form_4': (context) => StudentForm4(),
        '/student_form_5': (context) => StudentForm5(),
      },
    );
  }
}
