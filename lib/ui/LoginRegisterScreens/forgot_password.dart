import 'package:blood_donation_app/ui/LoginRegisterScreens/otp_screen.dart';
import 'package:blood_donation_app/widgets/reusable_button.dart';
import 'package:blood_donation_app/widgets/reusable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Forgot Password"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ReUsableTextField(
                  leadingIcon: Icons.mail,
                  hintText: "Enter Email",
                  controller: _emailController),
            ),
            const SizedBox(height: 21),
            const Text(
              "Your password reset OTP will be",
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "sent in this email",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21),
              child: CustomElevatedButton(
                text: "Send",
                onPressed: () {
                  Get.to(const OTPScreen());
                },
                backgroundColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
