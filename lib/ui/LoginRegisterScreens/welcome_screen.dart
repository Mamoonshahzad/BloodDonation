import 'package:blood_donation_app/ui/LoginRegisterScreens/register_screen.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/reusable_button.dart';
import '../home_screen.dart';
import 'login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: SizedBox(
              width: 234,
              height: 249,
              child: Image.asset(
                "assets/image/Welcome.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 15.5),
          Text("Dare To Donate",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 28, color: mainColor)),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
                "You can donate for ones in need and request blood if you need",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 20, color: textColor)),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22),
            child: CustomElevatedButton(
              text: "Login",
              onPressed: () {
                Get.to(const LoginScren());
              },
              backgroundColor: mainColor,
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22),
            child: CustomElevatedButton(
              text: "Register",
              onPressed: () {
                Get.to(const RegisterScreen());
              },
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
