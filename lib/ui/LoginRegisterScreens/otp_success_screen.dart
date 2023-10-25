import 'package:blood_donation_app/ui/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/reusable_button.dart';

class OTPSuccessScreen extends StatefulWidget {
  const OTPSuccessScreen({super.key});

  @override
  State<OTPSuccessScreen> createState() => _OTPSuccessScreenState();
}

class _OTPSuccessScreenState extends State<OTPSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white, // Container background color
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10), // Clip the child to match the container's border radius
                child: Image.asset(
                  'assets/images/success.jpg', // Replace with the path to your image asset
                  fit: BoxFit.fill, // Adjust how the image fits the container
                ),
              ),
            ),
            const SizedBox(height: 55),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21),
              child: CustomElevatedButton(
                text: "Success",
                onPressed: () {
                  Get.to(const HomeScreen());
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
