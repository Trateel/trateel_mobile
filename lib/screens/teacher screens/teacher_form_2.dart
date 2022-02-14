// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';
import 'package:trateel_mobile/widget/my_text_field.dart';

class TeacherForm2 extends StatefulWidget {
  const TeacherForm2({Key? key}) : super(key: key);

  @override
  _TeacherForm2State createState() => _TeacherForm2State();
}

class _TeacherForm2State extends State<TeacherForm2> {
  late TextEditingController _numberOfPartsController;
  late TextEditingController _qualificationController;
  late TextEditingController _otherPlacesWorkController;

  @override
  void initState() {
    super.initState();
    _numberOfPartsController = TextEditingController();
    _qualificationController = TextEditingController();
    _otherPlacesWorkController = TextEditingController();
  }

  @override
  void dispose() {
    _numberOfPartsController.dispose();
    _qualificationController.dispose();
    _otherPlacesWorkController.dispose();
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
                                  context, '/teacher_form_1');
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
                      'استمارة المحفظ',
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
                    Text(
                      'المؤهلات',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    MyTextField(
                      labelText: 'كم يحفظ من القرآن الكريم',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _numberOfPartsController,
                      textInputType: TextInputType.number,
                    ),
                    MyTextField(
                      labelText: 'المؤهل العلمي',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _qualificationController,
                    ),
                    MyTextField(
                      labelText: 'جهات أخرى يعمل لديها المحفظ',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _otherPlacesWorkController,
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
                    Navigator.pushReplacementNamed(context, '/teacher_form_3');
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
