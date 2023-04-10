import 'package:flutter/material.dart';
import 'package:grad_pro/view/screens/navBar/layoutScreen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        "assets/images/logo.png",
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 5,
      ),
      backgroundImage: Image(
        image: AssetImage("assets/images/Group1.png"),
        color: Colors.white,
      ).image,
      showLoader: false,
      durationInSeconds: 3,
      navigator: LayoutScreen(),
    );
  }
}
