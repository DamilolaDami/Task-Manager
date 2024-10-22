import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:taskmanager/pages/calendar_page.dart';
import 'package:taskmanager/pages/homepage.dart';

import '../constants/text_color.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  List pages = [
    const HomePage(),
    Container(),
    const CalendarPage(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemCount: pages.length,
          onPageChanged: (pages) {
            setState(() {
              _currentIndex = pages;
            });
          },
          itemBuilder: (context, index) {
            return pages[index];
          }),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 22,
        elevation: 9,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: CustomTextStyles.mainColor,
        unselectedItemColor: CustomTextStyles.mainColor.withOpacity(0.2),
        selectedLabelStyle: GoogleFonts.spaceGrotesk(
          fontSize: 12.0,
          color: CustomTextStyles.mainColor,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.spaceGrotesk(
          fontSize: 12.0,
          color: CustomTextStyles.mainColor,
          fontWeight: FontWeight.w300,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.home_fea),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.file_alt_faw5),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.calendar),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(AntDesign.message1),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(_currentIndex,
              duration: const Duration(
                microseconds: 300,
              ),
              curve: Curves.easeIn);
        },
      ),
    );
  }
}
