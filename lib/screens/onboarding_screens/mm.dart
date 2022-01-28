// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  _OnBoardingScreen1State createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int currentPage) {
              setState(() {
                _currentPage = currentPage;
              });
            },
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(40),
                      top: SizeConfig().scaleHeight(50),
                    ),
                    child: Image(image: AssetImage('images/onBoarding1.png')),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(30),
                      top: SizeConfig().scaleHeight(530),
                    ),
                    child: Text(
                      '20% Discount\nNew Arrival Product',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(30),
                      top: SizeConfig().scaleHeight(620),
                    ),
                    child: Text(
                      'Publish up your selfies to make yourself\nmore beautiful with this app.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(40),
                      top: SizeConfig().scaleHeight(50),
                    ),
                    child: Image(image: AssetImage('images/onBoarding2.png')),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(30),
                      top: SizeConfig().scaleHeight(530),
                    ),
                    child: Text(
                      'Take Advantage\nOf The Offer Shopping ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(30),
                      top: SizeConfig().scaleHeight(620),
                    ),
                    child: Text(
                      'Publish up your selfies to make yourself\nmore beautiful with this app.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(40),
                      top: SizeConfig().scaleHeight(50),
                    ),
                    child: Image(image: AssetImage('images/onBoarding3.png')),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(30),
                      top: SizeConfig().scaleHeight(530),
                    ),
                    child: Text(
                      'All Types Offers\nWithin Your Reach',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(30),
                      top: SizeConfig().scaleHeight(620),
                    ),
                    child: Text(
                      'Publish up your selfies to make yourself\nmore beautiful with this app.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(40),
              top: SizeConfig().scaleHeight(760),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 7,
                  width: _currentPage == 0 ? 30 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == 0 ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 7,
                  width: _currentPage == 1 ? 30 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == 1 ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Container(
                  height: 7,
                  width: _currentPage == 2 ? 30 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == 2 ? Colors.black : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(280),
              top: SizeConfig().scaleHeight(735),
            ),
            child: ElevatedButton(
              onPressed: () {
                _currentPage == 2
                    ? Navigator.pushReplacementNamed(context, '/splash_screen')
                    : _pageController.nextPage(
                        duration: Duration(milliseconds: 1),
                        curve: Curves.bounceInOut);
              },
              child: Icon(Icons.arrow_forward_ios),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(20, 60),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
