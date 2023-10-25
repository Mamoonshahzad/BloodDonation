import 'package:blood_donation_app/ui/LoginRegisterScreens/login.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:blood_donation_app/widgets/reusable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/reusable_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Register Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.only(left: 145.0, top: 20, right: 145),
            child: Image.asset(
              'assets/images/Logo.png', // Replace with the path to your logo image
              fit: BoxFit.contain,
              color: mainColor, // Adjust the image fit
            ),
          ),
          const Text(
            "Dare To Donate",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 21, color: mainColor),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ReUsableTextField(
                leadingIcon: Icons.person,
                hintText: "Enter Name",
                controller: _nameController),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ReUsableTextField(
                leadingIcon: Icons.mail,
                hintText: "Enter Email",
                controller: _emailController),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ReUsableTextField(
                leadingIcon: Icons.password,
                hintText: "Enter Password",
                controller: _emailController),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ReUsableTextField(
                leadingIcon: Icons.phone,
                hintText: "Enter Phone No",
                controller: _phoneNoController),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ReUsableTextField(
                leadingIcon: Icons.bloodtype_outlined,
                hintText: "Enter Blood Group",
                controller: _bloodGroupController),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ReUsableTextField(
                leadingIcon: Icons.location_on_outlined,
                hintText: "Enter Your Location",
                controller: _locationController),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22),
            child: CustomElevatedButton(
              text: "Register",
              onPressed: () {
                Get.to(const LoginScren());
              },
              backgroundColor: Colors.red,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account ",
                style: GoogleFonts.poppins(color: textColor, fontSize: 17),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const LoginScren());
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: mainColor,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
