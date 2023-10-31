import 'package:blood_donation_app/ui/LoginRegisterScreens/forgot_password.dart';
import 'package:blood_donation_app/ui/LoginRegisterScreens/login.dart';
import 'package:blood_donation_app/ui/LoginRegisterScreens/register_screen.dart';
import 'package:blood_donation_app/ui/LoginRegisterScreens/welcome_screen.dart';
import 'package:blood_donation_app/ui/donate_screen.dart';
import 'package:blood_donation_app/ui/edit_profile_screen.dart';
import 'package:blood_donation_app/ui/find_donors_screen.dart';
import 'package:blood_donation_app/ui/home_screen.dart';
import 'package:blood_donation_app/ui/LoginRegisterScreens/onboarding_screen.dart';
import 'package:blood_donation_app/ui/order_blood.dart';
import 'package:blood_donation_app/ui/profile_screen.dart';
import 'package:blood_donation_app/ui/report_screen.dart';
import 'package:blood_donation_app/ui/search_screen.dart';
import 'package:blood_donation_app/ui/LoginRegisterScreens/splash_screen.dart';
import 'package:blood_donation_app/ui/youtube.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
