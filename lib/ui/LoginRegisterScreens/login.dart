import 'package:blood_donation_app/ui/LoginRegisterScreens/forgot_password.dart';
import 'package:blood_donation_app/ui/LoginRegisterScreens/register_screen.dart';
import 'package:blood_donation_app/ui/home_screen.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:blood_donation_app/widgets/reusable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/reusable_button.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.only(left: 145.0, top: 30, right: 145),
              child: Image.asset(
                'assets/images/Logo.png', // Replace with the path to your logo image
                fit: BoxFit.contain,
                width: 4,
                color: mainColor, // Adjust the image fit
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.8),
              child: Text(
                "Dare To Donate",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: mainColor),
              ),
            ),
            const SizedBox(height: 85),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: ReUsableTextField(
                  leadingIcon: Icons.mail,
                  hintText: "Enter Your Email",
                  controller: _emailController),
            ),
            const SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: ReUsableTextField(
                  leadingIcon: Icons.password,
                  hintText: "Enter Your Password",
                  controller: _passwordController),
            ),
            const SizedBox(height: 22),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: CustomElevatedButton(
                text: "Login",
                onPressed: () {
                  Get.to(const HomeScreen());
                },
                backgroundColor: Colors.red,
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Get.to(const ForgotPasswordScreen());
              },
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.poppins(fontSize: 17),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const RegisterScreen());
                  },
                  child: Text(
                    "Register Now?",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
