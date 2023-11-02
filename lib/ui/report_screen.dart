import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Report Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on),
                  Text("Research Center", style: GoogleFonts.poppins())
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              Center(
                  child: Text("Dhaka Medical College, Dhaka",
                      style: GoogleFonts.poppins())),
              const SizedBox(
                height: 22,
              ),
              Container(
                margin: const EdgeInsets.only(right: 60),
                height: 250,
                width: 250,
                child: Image.asset("assets/images/Flask.png"),
              ),
              const SizedBox(height: 22),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(text1: "6 mmol/L", text2: "Glucose"),
                  ReusableContainer(text1: "6.2 mmol/L", text2: "Cholesterol"),
                  ReusableContainer(text1: "12 mmol/L", text2: "Bilirubin"),
                ],
              ),
              const SizedBox(height: 22),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(text1: "   3 ml/L  ", text2: " RBC "),
                  ReusableContainer(text1: "    102 ft    ", text2: "MCV"),
                  ReusableContainer(text1: "  276 bL   ", text2: "Platelets"),
                ],
              ),
              const SizedBox(
                height: 66,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text(
                  "My Report",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  final String text1;
  final String text2;

  const ReusableContainer(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 68,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text2,
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
