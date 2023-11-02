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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                width: 114,
                height: 150,
                child: Image.asset('assets/image/appLogo.png'),
              ),
              const SizedBox(height: 33),
              Image.asset('assets/image/BandaganKhuda.png',
                  width: 194, height: 66),
              const SizedBox(height: 85),
              ReUsableTextField(
                  leadingIcon: Icons.mail,
                  hintText: "Enter Your Email",
                  controller: _emailController),
              const SizedBox(height: 22),
              ReUsableTextField(
                  leadingIcon: Icons.password,
                  hintText: "Enter Your Password",
                  controller: _passwordController),
              const SizedBox(height: 22),
              CustomElevatedButton(
                text: "Login",
                onPressed: () {
                  Get.to(const HomeScreen());
                },
                backgroundColor: Colors.red,
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
              const SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const RegisterScreen());
                    },
                    child: Text(
                      "Register Now?",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
