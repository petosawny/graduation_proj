import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_pro/constant.dart';
import 'package:grad_pro/view/screens/navBar/navScreens/MoreScreen/moreScreen.dart';
import 'package:grad_pro/view/screens/navBar/navScreens/ResScreen/resScreen.dart';
import 'package:grad_pro/view/screens/navBar/navScreens/searchScreen.dart';

import 'navScreens/homeScreen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selected = 3;

  List screens = [
    MoreScreen(),
    ResScreen(),
    SearchScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.notifications,
            color: active,
            size: 40,
          ),
          onPressed: () {},
        ),
        automaticallyImplyLeading: false,
        actions: [
          Image.asset('assets/images/logo.png', color: active),
          SizedBox(
            width: MediaQuery.of(context).size.width / 10,
          ),
        ],
      ),
      body: screens[_selected],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,

        iconSize: 35,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: active,
        unselectedItemColor: subText,
        backgroundColor: white,
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: subText,
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: subText,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'المزيد',
              icon: SvgPicture.asset("assets/icons/moreDisabled.svg"),
              activeIcon: SvgPicture.asset("assets/icons/moreActive.svg")),
          BottomNavigationBarItem(
              label: 'حجوزاتي',
              icon: SvgPicture.asset("assets/icons/resDisabled.svg"),
              activeIcon: SvgPicture.asset("assets/icons/resActive.svg")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/searchDisabled.svg"),
              label: 'بحث',
              activeIcon: SvgPicture.asset("assets/icons/searchActive.svg")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/homeDisabled.svg"),
              activeIcon: SvgPicture.asset("assets/icons/homeActive.svg"),
              label: 'الرئيسية'),
        ],
        currentIndex: _selected,
        onTap: (index) {
          setState(() {
            _selected = index;
          });
        },
      ),
    );
  }
}
