import 'package:blood_donation_app/utils/app_urls.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateContainer extends StatelessWidget {
  DonateContainer(
      {super.key, required this.title, required this.text, required this.icon});

  final String title;
  final String text;
  var icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .8,
      height: Get.height * .1,
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20.0)],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: mainColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: textColor),
              Text(text,
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
