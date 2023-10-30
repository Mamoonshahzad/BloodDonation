import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonatesScreen extends StatefulWidget {
  const DonatesScreen({super.key});

  @override
  State<DonatesScreen> createState() => _DonatesScreenState();
}

class _DonatesScreenState extends State<DonatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Donates Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .2,
                  child: Image.asset("assets/images/bloodflow.jpg",
                      fit: BoxFit.contain)),
              const ReusableContainer(
                  name: "Umair Ahmad", date: "22/3/2022", amount: "2 ltrs"),
              const SizedBox(height: 15),
              const ReusableContainer(
                  name: "Usama Hussain", date: "23/4/2023", amount: "3 ltrs"),
              const SizedBox(height: 15),
              const ReusableContainer(
                  name: "Jawad", date: "4/5/2022", amount: "4 ltrs"),
              const SizedBox(height: 15),
              const ReusableContainer(
                  name: "Saad Khan", date: "2/4/2023", amount: "2 ltrs"),
              const SizedBox(height: 15),
              const ReusableContainer(
                  name: "Yasir Hameed", date: "3/3/2022", amount: "1 ltr")
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableContainer extends StatefulWidget {
  const ReusableContainer(
      {Key? key, required this.name, required this.date, required this.amount})
      : super(key: key);
  final String name;
  final String date;
  final String amount;

  @override
  State<ReusableContainer> createState() => _ReusableContainerState();
}

class _ReusableContainerState extends State<ReusableContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .11,
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10.0)],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Donated to: ",
                  style: GoogleFonts.poppins(color: textColor),
                ),
                Text(widget.name,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: textColor))
              ],
            ),
            Row(
              children: [
                Text(
                  "Donation Time: ",
                  style: GoogleFonts.poppins(color: textColor),
                ),
                Text(widget.date,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: textColor))
              ],
            ),
            Row(
              children: [
                Text(
                  "Donation Amount: ",
                  style: GoogleFonts.poppins(color: textColor),
                ),
                Text(widget.amount,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: textColor))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
