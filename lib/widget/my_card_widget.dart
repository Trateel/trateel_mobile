// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  String cardImage;
  String titel;
  VoidCallback toDo;

  MyCardWidget({
    required this.toDo,
    required this.cardImage,
    required this.titel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 10, bottom: 10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
            Image(
              image: AssetImage(cardImage),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFC653CB).withOpacity(0.83),
                    Color(0xFFC653CB).withOpacity(0.57),
                    Color(0xFFC653CB).withOpacity(0.0),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 49,
              child: Text(
                titel,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 49,
              child: Container(
                child: IconButton(
                  onPressed: toDo,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF030303),
                  ),
                ),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
