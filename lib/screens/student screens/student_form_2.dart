// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';

class StudentForm2 extends StatefulWidget {
  const StudentForm2({Key? key}) : super(key: key);

  @override
  _StudentForm2State createState() => _StudentForm2State();
}

class _StudentForm2State extends State<StudentForm2> {
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
                                  context, '/student_form_1');
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
                    Text(
                      'تعهد الطالب',
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
                          child: Text(
                            'بقبولي الالتحاق والمشاركة في مختلف نشاطات\n'
                            'المدرسة ومركز تحفيظ القرآن الكريم أتعهد بما يلي:\n'
                            '\n'
                            '1.الالتزام بصلاة الجماعة في المسجد.\n'
                            '2.التحلي بالأخلاق الإسلامية الكريمة.\n'
                            '3.الالتزام بحفظ ثلاث صفحات يومياً ومراجعة ما سبق حفظه حسب الخطة.\n'
                            '4.الالتزام بالحضور والانصراف في الوقت المحدد وعدم مخالفة ذلك الا بعذر.\n'
                            '5.الانضباط أثناء الجلوس في الحلقة وعدم الخروج من الحلقة إلا بإذن مدرس الحلقة.\n'
                            '6.عند تكرار غيابي يحق للإدارة أن تتخذ ما تجده مناسباً.',
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
                      Navigator.pushReplacementNamed(context, '/student_form_3');
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
