// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';
import 'package:trateel_mobile/utils/helpers.dart';
import 'package:trateel_mobile/widget/my_elvated_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers{
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool visible = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/Login.png'),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(54),
                    ),
                    child: Text(
                      'مرحباً بك!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(55),
                    ),
                    child: Text(
                      'أهلاً، قم بتسجيل الدخول لتكمل رحلتك القرآنية.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF030303),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(55),
                      end: SizeConfig().scaleWidth(55),
                    ),
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'البريد الإلكتروني',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC653CB),
                            width: 2,
                          ),
                        ),
                        focusedBorder:  UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC653CB),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: SizeConfig().scaleWidth(55),
                      end: SizeConfig().scaleWidth(55),
                    ),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: visible,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'كلمة المرور',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC653CB),
                            width: 2,
                          ),
                        ),
                        focusedBorder:  UnderlineInputBorder(
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          end: SizeConfig().scaleWidth(52),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'هل نسيت كلمة المرور؟',
                            style: TextStyle(
                              color: Color(0xFF030303),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: SizeConfig().scaleHeight(33),
                      bottom: SizeConfig().scaleHeight(18),
                    ),
                    child: Center(
                      child: MyElvatedButton(
                        toDo: (){
                          performLogin();
                        },
                          text: 'تسجيل الدخول',
                          textColor: Colors.white,
                          buttonHeight: 58,
                          buttonWidth: 210,
                          buttonColor: Color(0xFFD459D9),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      bottom: SizeConfig().scaleHeight(25),
                    ),
                    child: Center(
                      child: MyElvatedButton(
                        toDo: (){
                          Navigator.pushReplacementNamed(context, '/request_access_screen');
                        },
                        text: 'تقديم طلب',
                        textColor: Color(0xFFC653CB),
                        buttonHeight: 58,
                        buttonWidth: 210,
                        buttonColor: Colors.white,
                        buttonSideColor: Color(0xFFC653CB),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future performLogin() async{
    if(checkData()){
      await login();
    }
  }
  bool checkData(){
    if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      showSnackBar(context, message: 'أهلا بك.');
      return true;
    }
    showSnackBar(context, message: 'إسم المستخدم أو كلمة المرور غير صحيحين.', error: true);
    return false;
  }
  Future login() async{
        //TODO: Login - API Request
    checkData();
  }
}
