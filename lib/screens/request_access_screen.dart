// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';
import 'package:trateel_mobile/widget/my_card_widget.dart';

class RequestAccessScreen extends StatefulWidget {
  const RequestAccessScreen({Key? key}) : super(key: key);

  @override
  _RequestAccessScreenState createState() => _RequestAccessScreenState();
}

class _RequestAccessScreenState extends State<RequestAccessScreen> {
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
                          Navigator.pushReplacementNamed(context, '/login_screen');
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
                Text(
                  'إختر نوع طلبك',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFC653CB),
                  ),
                ),
                Text(
                  'تأكد من صحة البيانات المقدمة. سيتم مراجعة طلبك و\nإعتماده من قبل المشرفين',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF030303),
                  ),
                ),
                MyCardWidget(
                  toDo: () {
                    Navigator.pushReplacementNamed(context, '/teacher_form_1');
                  },
                  cardImage: 'assets/images/Teacher.png',
                  titel: 'محفظ',
                ),
                MyCardWidget(
                  toDo: () {},
                  cardImage: 'assets/images/Student.png',
                  titel: 'طالب',
                ),
                MyCardWidget(
                  toDo: () {},
                  cardImage: 'assets/images/Parents.png',
                  titel: 'ولي أمر',
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
