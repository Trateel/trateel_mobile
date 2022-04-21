// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

mixin Alert {
  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              title: Row(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: 15),
                    child: Image(
                      image: AssetImage('assets/images/Group.png'),
                    ),
                  ),
                  Text(
                    'تم التقديم بنجاح',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFC653CB),
                    ),
                  ),
                ],
              ),
              content: Text('سيصلك إشعار عند إعتماد طلبك وإتاحة\nمزايا حسابك من قبلالمشرفين.'),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 20),
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/done_screen');
                      },
                      icon: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Color(0xFFC653CB).withOpacity(1),
                          Color(0xFFC653CB).withOpacity(0.6),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
