// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';

class StudentForm4 extends StatefulWidget {
  const StudentForm4({Key? key}) : super(key: key);

  @override
  _StudentForm4State createState() => _StudentForm4State();
}

class _StudentForm4State extends State<StudentForm4> {
  String name = 'محمد محجوب';
  bool status = false;
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
                                  context, '/student_form_3');
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
                      'استمارة الطالب',
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
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: 7),
                      child: Row(
                        children: [
                          Icon(
                            Icons.warning_amber_outlined,
                            color: Color(0xFFDF678C),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 5),
                            child: Text(
                              'يرجى من ولي الأمر تعبئة البيانات التالية.',
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
                      'تعهد ولي الأمر',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: 10,
                        start: 5,
                        end: 5,
                      ),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: 25,
                            bottom: 25,
                            start: 15,
                            end: 15,
                          ),
                          child: Text('أنا ولي أمر الطالب $name أتعهد لإدارة مركز تحفيظ\n'
                              'القرآن الكريم بأن يكون الطالب ملتزم بالدراسة في\n'
                              'المركز حضوراً وحفظاً وأن يكون الطالب حسن السير\n'
                              'والسلوك وملتزم بالأخلاق الإسلامية.',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        color: Color(0xFFC4C4C4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                          side: BorderSide(
                            width: 1,
                            color: Colors.black,
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
                        Text('قرأت كافة التفاصيل أعلاه وأتعهد أنا الطالب بكل ما جاء فيها.')
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
                    Navigator.pushReplacementNamed(context, '/student_form_5');
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
