import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';
class MyOnBoarding extends StatelessWidget {

  String imageName;
  String title;
  String text;

  MyOnBoarding({required this.imageName,required this.title,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            top: SizeConfig().scaleHeight(30),
          ),
          child: Center(
            child: Image(
              image: AssetImage(
                'assets/images/'+imageName,
              ),
            ),
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Color(0xFFC653CB),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}