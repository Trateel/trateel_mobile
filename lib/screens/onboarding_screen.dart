// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trateel_mobile/widget/my_on_boarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int currentPage) {
                setState(() {
                  _currentPage = currentPage;
                });
              },
              children: [
                MyOnBoarding(
                  imageName: 'Onboarding1.png',
                  title: 'إدارة الحلقات\nالقرآنية',
                  text:
                      'الحلقات القرآنية هي : اجتماع في بيت\nمن بيوت الله أو في أي مكان طاهر\n مَرْضيّ ؛ لتدارُس القرآن الكريم مدة من\n الزمن',
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 50),
                  child: MyOnBoarding(
                    imageName: 'Onboarding2.png',
                    title: 'إدارة المراجعة\nوالحفظ',
                    text:
                        'الحلقات القرآنية هي : اجتماع في بيت\nمن بيوت الله أو في أي مكان طاهر\n مَرْضيّ ؛ لتدارُس القرآن الكريم مدة من\n الزمن',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 50),
                  child: MyOnBoarding(
                    imageName: 'Onboarding3.png',
                    title: 'التنبيهات و إصدار\nالتقارير',
                    text:
                        'الحلقات القرآنية هي : اجتماع في بيت\nمن بيوت الله أو في أي مكان طاهر\n مَرْضيّ ؛ لتدارُس القرآن الكريم مدة من\n الزمن',
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 7,
                    width: _currentPage == 0 ? 30 : 10,
                    decoration: BoxDecoration(
                      color: _currentPage == 0
                          ? Color(0xFFC653CB)
                          : Color(0xFFebc3ed),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 7,
                    width: _currentPage == 1 ? 30 : 10,
                    decoration: BoxDecoration(
                      color: _currentPage == 1
                          ? Color(0xFFC653CB)
                          : Color(0xFFebc3ed),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  Container(
                    height: 7,
                    width: _currentPage == 2 ? 30 : 10,
                    decoration: BoxDecoration(
                      color: _currentPage == 2
                          ? Color(0xFFC653CB)
                          : Color(0xFFebc3ed),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: TextButton(
                onPressed: () {
                  _currentPage == 2
                      ? Navigator.pushReplacementNamed(context, '/login_screen')
                      : _pageController.nextPage(
                          duration: Duration(milliseconds: 1),
                          curve: Curves.bounceInOut);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFFC653CB),
                    ),
                    Text(
                      'التالي',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 30,
              child: TextButton(
                onPressed: () {
                  _currentPage != 2
                      ? _pageController.jumpToPage(2)
                      : Navigator.pushReplacementNamed(
                          context, '/login_screen');
                },
                child: Text(
                  'تخطي',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFC653CB),
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
