import 'package:blood_donation_app/model/find_donors_model.dart';
import 'package:blood_donation_app/widgets/profile_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/constant_colors.dart';

class DonorsProfileScreen extends StatelessWidget {
  const DonorsProfileScreen({super.key, required this.donorsModel});
  final DonorsModel donorsModel;

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      builder: (BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: 150,
                height: 150,
                child: Image.asset(donorsModel.imageUrl, fit: BoxFit.fill)),
          ),
          const SizedBox(height: 10),
          Text(donorsModel.donorName,
              style: GoogleFonts.poppins(
                  fontSize: 17, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.location_on_outlined),
              Text(donorsModel.donorLocation,
                  style: GoogleFonts.poppins(fontSize: 17)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              profileScreenButton(
                  iconImage: 'assets/icons/Person Call.png',
                  btnText: 'CallNow',
                  btnColor: mainColor),
              profileScreenButton(
                  iconImage: 'assets/icons/request.png',
                  btnText: 'Request',
                  btnColor: Colors.blueGrey)
            ],
          )
        ],
      ),
      onClosing: () {},
    );
  }
}
