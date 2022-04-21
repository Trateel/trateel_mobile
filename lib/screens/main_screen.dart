// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';
import 'package:trateel_mobile/widget/my_card_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              top: SizeConfig().scaleHeight(60),
              start: SizeConfig().scaleWidth(20),
              end: SizeConfig().scaleWidth(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 15),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(start: 7),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/login_screen');
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFFC653CB),
                        ),
                      ),
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFC653CB).withOpacity(0.1),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/images/Teacher.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'محمد أشرف محمود محجوب',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'محفظ',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 15),
                  child: Text(
                    'مهامك الإعتيادية',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF030303),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        color: Color(0xFFC653CB),
                      ),
                      Image(
                        image: AssetImage('assets/images/Image.png'),
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                      ),
                      Positioned(
                        top: 50,
                        right: 30,
                        child: Text(
                          'تسجيل الحضور',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 49,
                        child: Container(
                          child: IconButton(
                            onPressed: () {},
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
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 20),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 200,
                          color: Color(0xFFC653CB),
                        ),
                        Image(
                          image: AssetImage('assets/images/Image2.png'),
                          fit: BoxFit.cover,
                          height: 200,
                          width: double.infinity,
                        ),
                        Positioned(
                          top: 50,
                          right: 30,
                          child: Text(
                            'تسجيل الحفظ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          right: 49,
                          child: Container(
                            child: IconButton(
                              onPressed: () {},
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 20),
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 116,
                              width: 170,
                              color: Colors.white,
                            ),
                            Positioned(
                              bottom: 25,
                              left: 30,
                              child: Image(
                                height: 40,
                                width: 40,
                                image: AssetImage('assets/images/boy1.png'),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'إجمالي الطلاب',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              right: 10,
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: 20, top: 20),
                                child: Text(
                                  '67 طالب',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 116,
                              width: 170,
                              color: Colors.white,
                            ),
                            Positioned(
                              bottom: 25,
                              left: 30,
                              child: Image(
                                height: 40,
                                width: 40,
                                image:
                                    AssetImage('assets/images/discussion1.png'),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'إجمالي الحلقات',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              right: 10,
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(
                                    start: 20, top: 20),
                                child: Text(
                                  '3 حلقات',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
