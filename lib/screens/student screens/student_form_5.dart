// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';
import 'package:trateel_mobile/widget/my_text_field.dart';

class StudentForm5 extends StatefulWidget {
  const StudentForm5({Key? key}) : super(key: key);

  @override
  _StudentForm5State createState() => _StudentForm5State();
}

class _StudentForm5State extends State<StudentForm5> {
  late TextEditingController _emailController;
  late TextEditingController _userNameController;
  late TextEditingController _passwordController;
  bool visible = true;
  bool status = false;
  bool status2 = false;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
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
                                  context, '/student_form_4');
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
                    Text(
                      '?????????????? ????????????',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    MyTextField(
                      labelText: '?????? ????????????????',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _userNameController,
                    ),
                    MyTextField(
                      labelText: '???????????? ????????????????????',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _emailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 5, end: 5, top: 10),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: visible,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: '???????? ????????????',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC653CB),
                              width: 2,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC653CB),
                              width: 2,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visible ? visible = false : visible = true;
                              });
                            },
                            icon: Icon(visible
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: status,
                          onChanged: (value) {
                            setState(() {
                              status = value!;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor: Color(0xFFC653CB),
                        ),
                        Text('?????????? ?????? ?????????????? ??????????????.')
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: status2,
                          onChanged: (value) {
                            setState(() {
                              status2 = value!;
                            });
                          },
                          checkColor: Colors.white,
                          activeColor: Color(0xFFC653CB),
                        ),
                        Text('???????? ?????????? ?????????? ???????????? ???????????????????? ???? ??????????????.')
                      ],
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
                    Navigator.pushReplacementNamed(context, '/done_screen');
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
