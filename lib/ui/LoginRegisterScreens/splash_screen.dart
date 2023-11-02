import 'package:blood_donation_app/ui/LoginRegisterScreens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/constant_colors.dart';
import '../home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const OnBoardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 216),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 114,
                height: 171,
                child: Image.asset(
                  'assets/images/Logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 24),
              Text("Dare To Donate",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 33,
                      fontWeight: FontWeight.w600)),
              Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/images/SplashScreen.png',
                      )))
            ],
          ),
        ));
  }
}
