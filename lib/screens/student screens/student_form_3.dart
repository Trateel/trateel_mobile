// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';
import 'package:trateel_mobile/widget/my_text_field.dart';

class StudentForm3 extends StatefulWidget {
  const StudentForm3({Key? key}) : super(key: key);

  @override
  _StudentForm3State createState() => _StudentForm3State();
}

class _StudentForm3State extends State<StudentForm3> {
  late TextEditingController _nameController;
  late TextEditingController _relationController;
  late TextEditingController _jobController;
  late TextEditingController _homeTelephoneController;
  late TextEditingController _mobileController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _relationController = TextEditingController();
    _jobController = TextEditingController();
    _homeTelephoneController = TextEditingController();
    _mobileController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _relationController.dispose();
    _jobController.dispose();
    _homeTelephoneController.dispose();
    _mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
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
                                  context, '/student_form_2');
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
                      '?????????????? ????????????',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    Text(
                      '???????? ???? ?????? ???????????????? ??????????????. ???????? ???????????? ???????? ??\n?????????????? ???? ?????? ????????????????',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF030303),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 7),
                      child: Row(
                        children: [
                          Icon(Icons.warning_amber_outlined,color: Color(0xFFDF678C),),
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 5),
                            child: Text(
                              '???????? ???? ?????? ?????????? ?????????? ???????????????? ??????????????.',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFDF678C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '???????????? ?????? ??????????',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    MyTextField(
                      labelText: '?????????? ??????????',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _nameController,
                    ),
                    MyTextField(
                      labelText: '?????? ??????????????',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _relationController,
                    ),
                    MyTextField(
                      labelText: '??????????????',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _jobController,
                    ),
                    MyTextField(
                      labelText: '?????? ???????? ????????????',
                      outLineBorderColor: Color(0xFFC653CB),
                      textInputType: TextInputType.number,
                      textEditingController: _homeTelephoneController,
                    ),
                    MyTextField(
                      labelText: '?????? ????????????',
                      outLineBorderColor: Color(0xFFC653CB),
                      textInputType: TextInputType.number,
                      textEditingController: _mobileController,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 25,
              child: Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/student_form_4');
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
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
      ),
    );
  }
}
