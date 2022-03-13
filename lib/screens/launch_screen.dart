// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.bottomEnd,
                end: AlignmentDirectional.topStart,
                colors: [
                  Color(0xFF14EFB4),
                  Color(0xFFC653CB),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                image: AssetImage('assets/images/Logo.png'),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 50),
                child: Image(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  image: AssetImage(
                    'assets/images/Graphics.png',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
