import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUsableTextField extends StatelessWidget {
  final IconData leadingIcon;
  final String hintText;
  final TextEditingController controller;

  const ReUsableTextField({
    super.key,
    required this.leadingIcon,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(leadingIcon),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(color: textColor),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
