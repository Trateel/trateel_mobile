// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trateel_mobile/widget/my_elvated_button.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Image(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  image: AssetImage('assets/images/DoneHead.png'),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 10),
                  child: Image(
                    image: AssetImage(
                      'assets/images/Done.png',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 19),
                  child: Text(
                    'تهانينا!',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFC653CB),
                    ),
                  ),
                ),
                Text(
                  'سيصلك إشعار عند اعتماد طلبك وإتاحة\nمزايا حسابك من قبل المشرفين.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 30,
              left: 82,
              right: 82,
              child: MyElvatedButton(
                toDo: (){
                },
                text: 'تسجيل الدخول',
                textColor: Colors.white,
                buttonHeight: 58,
                buttonWidth: 210,
                buttonColor: Color(0xFFD459D9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}