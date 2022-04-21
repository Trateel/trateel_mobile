// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trateel_mobile/size_config.dart';
import 'package:trateel_mobile/utils/helpers.dart';
import 'package:trateel_mobile/widget/my_text_field.dart';

class TeacherForm3 extends StatefulWidget {
  const TeacherForm3({Key? key}) : super(key: key);

  @override
  _TeacherForm3State createState() => _TeacherForm3State();
}

class _TeacherForm3State extends State<TeacherForm3> with Helpers{
  late TextEditingController _socialStatusController;
  late TextEditingController _numberOfSonsController;
  late TextEditingController _healthStatusController;
  late TextEditingController _livingStatusController;

  @override
  void initState() {
    super.initState();
    _socialStatusController = TextEditingController();
    _numberOfSonsController = TextEditingController();
    _healthStatusController = TextEditingController();
    _livingStatusController = TextEditingController();
  }

  @override
  void dispose() {
    _socialStatusController.dispose();
    _numberOfSonsController.dispose();
    _healthStatusController.dispose();
    _livingStatusController.dispose();
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
                                  context, '/teacher_form_2');
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
                      'الوضع الإجتماعية',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    MyTextField(
                      labelText: 'الحالة الإجتماعية',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _socialStatusController,
                    ),
                    MyTextField(
                      labelText: 'عدد الأبناء',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _numberOfSonsController,
                      textInputType: TextInputType.number,
                    ),
                    MyTextField(
                      labelText: 'الحالة الصحية',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _healthStatusController,
                    ),
                    MyTextField(
                      labelText: 'الحالة المعيشية',
                      outLineBorderColor: Color(0xFFC653CB),
                      textEditingController: _livingStatusController,
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
                    performTest();
                    if(checkData()){
                      Navigator.pushReplacementNamed(context, '/teacher_form_4');
                    }
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
  Future performTest() async{
    if(checkData()){
      await test();
    }
  }
  bool checkData(){
    if(_socialStatusController.text.isNotEmpty && _numberOfSonsController.text.isNotEmpty
        &&_healthStatusController.text.isNotEmpty&&_livingStatusController.text.isNotEmpty) {
      showSnackBar(context, message: 'الإنتقال الى المرحلة التالية.');
      return true;
    }
    showSnackBar(context, message: 'يرجى إدخال البيانات بالكامل.', error: true);
    return false;
  }
  Future test() async{
    //TODO: Login - API Request
    checkData();
  }
}
