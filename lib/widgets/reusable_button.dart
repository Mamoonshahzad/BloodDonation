import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;

  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    Color txtColor = backgroundColor == Colors.white ? textColor : Colors.white;
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: GestureDetector(
        onTap: () => onPressed(),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: txtColor,
                width: 1,
              ),
              color: backgroundColor,
              borderRadius: BorderRadius.circular(23)),
          height: 60,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(color: txtColor, fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
