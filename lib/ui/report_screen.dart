import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.location_on), Text("Research Center")],
            ),
            const SizedBox(
              height: 9,
            ),
            const Center(child: Text("Dhaka Medical College, Dhaka")),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image.asset("assets/images/Flask.png"),
              ),
            ),
            const SizedBox(height: 22),
            const Padding(
              padding: EdgeInsets.only(right: 14, left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(text1: "6 mmol/L", text2: "Glucose"),
                  ReusableContainer(text1: "6.2 mmol/L", text2: "Cholesterol"),
                  ReusableContainer(text1: "12 mmol/L", text2: "Bilirubin"),
                ],
              ),
            ),
            const SizedBox(height: 22),
            const Padding(
              padding: EdgeInsets.only(right: 14, left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableContainer(text1: "   3 ml/L  ", text2: " RBC "),
                  ReusableContainer(text1: "    102 ft    ", text2: "MCV"),
                  ReusableContainer(text1: "  276 bL   ", text2: "Platelets"),
                ],
              ),
            ),
            const SizedBox(
              height: 66,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              child: const Text(
                "My Report",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            )
          ],
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
      width: 107,
      height: 68,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes the position of the shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
