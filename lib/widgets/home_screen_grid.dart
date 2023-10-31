import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenGrid extends StatelessWidget {
  const HomeScreenGrid(
      {super.key, required this.gridText, required this.gridIcon});
  final String gridText;
  final String gridIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10.0)],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            gridIcon,
            fit: BoxFit.fill,
          ),
          Text(
            gridText,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 14, color: textColor),
          )
        ],
      ),
    );
  }
}
