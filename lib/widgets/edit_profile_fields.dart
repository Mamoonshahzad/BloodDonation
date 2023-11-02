import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget editProfileFields({required String title, required String hintText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16)),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
      ],
    ),
  );
}
