// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trateel_mobile/size_config.dart';

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
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: SizeConfig().scaleHeight(30),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/images/Onboarding1.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'إدارة الحلقات\nالقرآنية',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    Text(
                      'الحلقات القرآنية هي : اجتماع في بيت\nمن بيوت الله أو في أي مكان طاهر\n مَرْضيّ ؛ لتدارُس القرآن الكريم مدة من\n الزمن',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: SizeConfig().scaleHeight(30),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/images/Onboarding1.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'إدارة الحلقات\nالقرآنية',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    Text(
                      'الحلقات القرآنية هي : اجتماع في بيت\nمن بيوت الله أو في أي مكان طاهر\n مَرْضيّ ؛ لتدارُس القرآن الكريم مدة من\n الزمن',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: SizeConfig().scaleHeight(30),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'assets/images/Onboarding1.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'إدارة الحلقات\nالقرآنية',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFC653CB),
                      ),
                    ),
                    Text(
                      'الحلقات القرآنية هي : اجتماع في بيت\nمن بيوت الله أو في أي مكان طاهر\n مَرْضيّ ؛ لتدارُس القرآن الكريم مدة من\n الزمن',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // _currentPage == 2
                      //     ? Navigator.pushReplacementNamed(
                      //         context, '/splash_screen')
                      //     : _pageController.nextPage(
                      //         duration: Duration(milliseconds: 1),
                      //         curve: Curves.bounceInOut);
                    },
                    child: Icon(Icons.arrow_forward_ios),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(20, 60),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                    ),
                  ),
                  Row(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
